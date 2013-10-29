#include <cstdio>
#include <string>
#include <cassert>
#include <cstring>
#include <vector>
#include <sstream>
#include <cstdlib>
#include <iostream>

using namespace std ;

/** represents either a set of column tags from the first line, or the column data for a given row */
typedef vector<string> columnData ;

#if defined _MSC_VER
   #define mysnprintf _snprintf
#else
   #define mysnprintf snprintf
#endif

/**
   As we navigate over the rows, collect stats on what we find on the columns so that we can pick an SQL type later.
 */
struct columnTypeInfo
{
   int   charLen ;
   int   sizes ;
   int   totalIntegersInColumn ;
   int   totalDateFormatsInColumn ;

   columnTypeInfo() : 
      charLen(0),
      sizes(0),
      totalIntegersInColumn(0),
      totalDateFormatsInColumn(0) 
   { }
} ;

bool                    g_bPrintHelpAndExit ;
double                  g_varcharFraction = 0.5 ;
columnData              g_headers ;
vector<columnData>      g_rows ;
vector<columnTypeInfo>  g_typeInfo ;
int                     g_numTags = 0 ;
char                    g_delimiter = ',' ;

static void showHelpAndExit() ;
static void parseArguments( int argc, char ** argv ) ;
static void printOneDataRow( int rowIndex ) ;
static void printOneColumnMetaData( int c ) ;
static void consumeOneLine( const string & line ) ;

int main( int argc, char ** argv )
{
   parseArguments( argc, argv ) ;

   if ( g_bPrintHelpAndExit )
   {
      showHelpAndExit() ;
   }

   printf( "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
           "<DataSet xmlns=\"http://www.ibm.com/qmf\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\n"
           "\n"
           "  <ResultSet>\n"
           "    <MetaData>\n"
           "      <SourceDescription/>\n" ) ;

   string s ;

   while ( getline( cin, s ) )
   {
      consumeOneLine( s ) ;
   }

   printf( "      <ColumnsAmount>%d</ColumnsAmount>\n", g_numTags ) ;

   for ( int c = 0 ; c < g_numTags ; c++ )
   {
      printOneColumnMetaData( c ) ;
   }

   printf( "    </MetaData>\n"
           "    <Data>\n" ) ;

   int numRows = g_rows.size() ;

   for ( int r = 0 ; r < numRows ; r++ )
   {
      printOneDataRow( r ) ;
   }

   printf( "     </Data>\n"
           "  </ResultSet>\n"
           "\n"
           "  <Extensions/>\n"
           "\n"
           "</DataSet>\n" ) ;

   return 0 ;
}

void parseArguments( int argc, char ** argv )
{
   if ( (2 == argc) && (1 == strlen(argv[1])) )
   {
      g_delimiter = argv[1][0] ;
   }
   else if ( argc > 1 )
   {
      showHelpAndExit() ;
   }
}

void showHelpAndExit()
{
   printf( "del2xml [delimiter] < input > output\n" 
           "\n"
           "delimiter - a one character delimiter (like Z)\n" ) ;

   exit( 1 ) ;
}

static void split( vector<string> & e, char del, const string & line )
{
   stringstream ss( line ) ;
   string s;

   while ( getline( ss, s, del ) )
   {
      e.push_back( s ) ;
   }
}

void consumeOneLine( const string & line )
{
   vector<string> e ;

   split( e, g_delimiter, line ) ;

   int numColumns = e.size( ) ; 

   if ( g_numTags )
   {
      assert( numColumns == g_numTags ) ;

      g_rows.push_back( e ) ;

      for ( int i = 0 ; i < numColumns ; i++ )
      {
         string v = e[ i ] ;
         int l = v.length( ) ;

         // save for average/stddev len calculation if char (to decide for char vs varchar).
         g_typeInfo[ i ].charLen += l ;

         if ( g_typeInfo[ i ].sizes < l )
         {
            g_typeInfo[ i ].sizes = l ;
         }

         bool foundNonChar = 0 ;

         char * err = 0 ;
         strtol( v.c_str(), &err, 10 ) ;

         if ( !err[0] )
         {
            g_typeInfo[ i ].totalIntegersInColumn++ ;

            foundNonChar = 1 ;
         }

//         if ( v =~ /^(\d+)\.(\d+)/ )
//         {
//               g_decimal[ i ]++ ;
//
//               foundNonChar = 1 ;
//         }

#if 0
         if ( v =~ qr(^\d\d/\d\d/\d\d\d\d$) )
         {
            g_typeInfo[ i ].totalDateFormatsInColumn++ ;

            foundNonChar = 1 ;
         }
#endif

         if ( foundNonChar )
         {
            // ...
         }
      }
   }
   else
   {
      g_headers = e ;
      g_numTags = numColumns ;

      g_typeInfo.resize( numColumns ) ;
   }
}

void printOneColumnMetaData( int c )
{
   int            cpp   = c + 1 ;
   const char *   n     = g_headers[ c ].c_str() ;
   int            s     = g_typeInfo[ c ].sizes ;
   char           attr[ 256 ] ;

   int numRows = g_rows.size() ;

   if ( g_typeInfo[ c ].totalIntegersInColumn == numRows )
   {
      mysnprintf( attr, sizeof(attr),
                  "<Type>integer</Type>\n"
                  "        <Width>%d</Width>", s ) ;
   }
#if 0
   elsif ( g_decimal[ c ] == numRows )
   {
      // FIXME: http://stackoverflow.com/questions/2377174/how-do-i-interpret-precision-and-scale-of-a-number-in-a-database

      // on decimal detection, will need to record the max scale and max prec (and distinguish from integer since valid ints are also 
      // valid decimal)
      mysnprintf( attr, sizeof(attr),
                  "<Type>decimal</Type>\n"
                  "        <Scale>0</Scale>\n"
                  "        <Precision>%d</Precision>", s ) ;
   }
   elsif ( g_dateformat[ c ] == numRows )
   {
      // FIXME: what attributes does date require?  May not have parsed in the correct format.  Don't enable without info.
      mysnprintf( attr, sizeof(attr), 
                  "<Type>date</Type>\n"
                  "        <Width>%d</Width>", s ) ;
   }
#endif
   else
   {
      int varcharSpace = g_typeInfo[ c ].charLen ;
      int charSpace = s * numRows ;

      // use varchar if it gets us at least a (by default) 50% savings in total space for the table.
      if ( varcharSpace < (charSpace * g_varcharFraction) )
      {
         mysnprintf( attr, sizeof(attr),
                     "<Type>varchar</Type>\n"
                     "        <Width>%d</Width>", s ) ;
      }
      else
      {
         mysnprintf( attr, sizeof(attr), 
                     "<Type>char</Type>\n"
                     "        <Width>%d</Width>", s ) ;
      }
   }

   printf( "      <ColumnDescription id=\"%d\">\n"
           "        <Name>%s</Name>\n"
           "        <Label>%s</Label>\n"
           "        %s\n"
           "        <Nullable>false</Nullable>\n"
           "        <Format>plain</Format>\n"
           "      </ColumnDescription>\n", cpp, n, n, attr ) ;
}

void printOneDataRow( int rowIndex )
{
   columnData & c = g_rows[ rowIndex ] ;

   printf( "      <Row id=\"%d\">\n", rowIndex ) ;

   for ( int i = 0 ; i < g_numTags ; i++ )
   {
      int cpp = i + 1 ;
      int sz = g_typeInfo[ i ].sizes ;
      const char * cv = c[ i ].c_str() ;

      // FIXME: should varchar output be trailing space padded?  Integer and decimal probably shouldn't either.
      printf( "        <Cell id=\"%d\">%-*s</Cell>\n", cpp, sz, cv ) ;
   }

   printf( "      </Row>\n" ) ;
}
