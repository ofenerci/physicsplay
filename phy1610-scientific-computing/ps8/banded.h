/** \file banded.h
 */
#if !defined phy1610_banded_h_included
#define phy1610_banded_h_included

#include "darray2.h"

/** parameters for initializeBandedMatrix::how */
enum class BANDING_TYPE
{
   TRIDIAGONAL,
   CYCLIC
} ;

/**
   Construct a tridiagonal matrix, overwriting any previous contents.

   \param m [in,out]
      The square matrix to write into.

   \param subdiagonal [in]
      The value to write onto all entries of the subdiagonal.

   \param diagonal [in]
      The value to write onto all entries of the diagonal.

   \param superdiagonal [in]
      The value to write onto all entries of the superdiagonal.

   \param how [in]
      One of INITIALIZE_BANDED or INITIALIZE_BANDED_CYCLIC.

      If INITIALIZE_BANDED_CYCLIC is specified, the subdiagonal value is put into the (1,N) location,
      and the superdiagonal value into the (N,1) location.
 */
void initializeBandedMatrix( darray2 &          m,
                             const double        subdiagonal,
                             const double        diagonal,
                             const double        superdiagonal,
                             const BANDING_TYPE  how ) ;

/**
   Return the number of rows and columns in the matrix.

   If the matrix is not square a array_not_square_error exception
   will be thrown.

   \param m [in]
      Matrix to check.
 */
int getSquareMatrixDimensions( const darray2 & m ) ;

#endif
