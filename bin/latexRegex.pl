#s/\\0\b/{(0)}/g;
#s/\\av\b/{\\textrm{av}}/g;
#s/\\or\b/\\overbar{r}/g;
#s/\\oX/\\overbar{X}/g;
#s/\\oG/\\overbar{\\Gamma}/g;
#s/\\0bcs/0_{\\mathrm{BCS}}/g ;
#s/0\\ccube/_{0,\\textrm{ccube}}/g;
#s/0\\iso/_{0,\\textrm{iso}}/g;
#s/\\12\b/\\frac{1}{2}/g;
s/\\1\b/{(1)}/g;
#s/\\23\b/\\frac{2}{3}/g;
s/\\2\b/{(2)}/g;
#s/\\32\b/\\frac{3}{2}/g;
#s/\^a/^{(a)}/g;
#s/\\AF/\\textrm{AF}/g;
#s/\\at\b/{\\mathrm{at}}/g ;
#s/\\aut/{\\textrm{AUT}}/g;
#s/_av/_{\\mathrm{av}}/g ;
#s/\\bark\b/\\overbar{k}/g ;
#s/\\barm\b/\\overbar{m}/g ;
#s/\\bar(.)/\\overbar{$1}/g ;
#s/\\barphi/\\overbar{\\phi}/g ;
#s/_bath/_{\\text{bath}}/g ;
#s/\^b/^{(b)}/g;
#s/\\Be\b/\\Bepsilon/g ;
#s/_BEC/_{\\mathrm{BEC}}/g ;
#s/\bialpha\b/{i_\\alpha}/g ;
#s/\\bkF/\\Bk_{\\mathrm{F}}/g ;
#s/\\bL/b_{\\mathrm{L}}/g ;
#s/_B/_{\\mathrm{B}}/g ;
#s/\\eq\b/{\\mathrm{eq}}/g ;
#s/\\b(.)_/\\overbar{$1}_/g ;
#s/\\bpF/\\Bp_{\\mathrm{F}}/g ;
#s/\\Br_av/\\Br_{\\mathrm{av}}/g ;
#s/\\Brm/\\Br - \\Br_m/g;
#s/\\Brn/\\Br - \\Br_n/g;
#s/\\bT/b_{\\mathrm{T}}/g ;
#s/\\btp/\\lr{ \\theta, \\phi }/g ;
#s/\\bvF/\\Bv_{\\mathrm{F}}/g ;
#s/\\ccube/{\\textrm{ccube}}/g;
#s/_classical/_{\\mathrm{classical}}/g ;
#s/\^classical/^{\\mathrm{classical}}/g ;
#s/_c/_{\\mathrm{c}}/g ;
#s/\\cm\b/\\textrm{cm}/g ;
#s/_CM/_{\\mathrm{CM}}/g ;
#s/_corrected/_{\\mathrm{corrected}}/g ;
#s/_coupling/_{\\text{coupling}}/g ;
#s/\\DC/D_{\\mathrm{C}}/g ;
#s/\\DD/\\mathcal{D}/g ;
#s/_div/_{\\mathrm{div}}/g ;
#s/\\domega/\\sin\\theta d\\theta d\\phi/g ;
#s/\\down\b/\\downarrow/g ;
#s/\\down\b/\\ket{\\downarrow}/g ;
#s/\\downdown\b/\\ket{\\downarrow \\downarrow}/g ;
#s/\\downup\b/\\ket{\\downarrow \\uparrow}/g ;
#s/\\DV/D_{\\mathrm{V}}/g ;
#s/\\E0/{\\E_k^\\nought}/g ;
#s/\\Eb/E_{\\mathrm{binding}}/g ;
#s/\\EC/E_{\\mathrm{C}}/g ;
#s/\\Ed/E_{\\mathrm{d}}/g ;
#s/\\ED/E_{\\mathrm{D}}/g ;
s/\\ee/\\epsilon/g ;
#s,\\E{(.*?)},{E_{k $1}^\\nought},g ;
#s/\\ee/\\mathcal{E}/g ;
#s/_\\eff/_{\\mathrm{eff}}/g ;
#s/\\Eg/E_{\\mathrm{g}}/g ;
#s/_E/_{\\mathrm{E}}/g ;
#s/ENV/{(\\mathrm{E}, \\mathrm{N}, \mathrm{V})}/g ;
#s/_eo/_{\\textrm{eo}}/g ;
#s/\\ES/E_{\\mathrm{S}}/g ;
#s/\\EV/E_{\\mathrm{V}}/g ;
#s/_final/_{\\mathrm{final}}/g ;
#s/_F/_{\\mathrm{F}}/g ;
#s/_full/_{\\text{full}}/g ;
#s/\\Gamma_{cav}/\\Gamma_{\\mathrm{cav}}/g  ;
#s/\\Gamma_cav/\\Gamma_{\\mathrm{cav}}/g  ;
#s/\\Gamma_{sp}/\\Gamma_{\\mathrm{sp}}/g  ;
#s/\\Gamma_sp/\\Gamma_{\\mathrm{sp}}/g  ;
#s/\\Gamma_{st}/\\Gamma_{\\mathrm{st}}/g  ;
#s/\\Gamma_st/\\Gamma_{\\mathrm{st}}/g ;
#s/_G/_{\\mathrm{G}}/g ;
#s/\\Ha/\\hat{H}_A/g;
#s/\\hatH/\\hat{H}/g ;
#s/\\hatL/\\hat{L}/g ;
#s/\\hatp/\\hat{p}/g ;
#s/\\hatPi/\\hat{\\Pi}/g ;
#s/\\hatr/\\hat{r}/g ;
#s/\\hatrho\b/\\hat{\\rho}/g ;
#s/\\hatrho_/\\hat{\\rho}_/g ;
#s/\\hatS/\\hat{S}/g ;
#s/\\hatT/\\hat{T}/g ;
#s/\\hatx/\\hat{x}/g ;
#s/\\haty/\\hat{y}/g ;
#s/\\hb2m/\\frac{\\Hbar}{2m}/g;
#s/\\hBL/\\hat{\\BL}/g ;
#s/\\hBp/\\hat{\\Bp}/g ;
#s/\\hBP/\\hat{\\BP}/g ;
#s/\\hBr/\\hat{\\Br}/g ;
#s/\\hBR/\\hat{\\BR}/g ;
#s/\\Hc/\\hat{H}/g;
#s/\\Hc/H_{\\mathrm{c}}/g ;
#s/\^\\i(.)/^{($1)}/g;
#s/\\i(\d)/{($1)}/g;
#s/_ideal/_{\\mathrm{ideal}}/g ;
#s/\\II/\\mathcal{I}/g ;
#s/\\ik\-1/{(k-1)}/g;
#s/\\ik\+1/{(k+1)}/g;
#s/\\ik/{(k)}/g;
#s/_\\I/_{\\mathrm{I}}/g;
#s/\\inc\b/{\\textrm{inc}}/g ;
#s/\\in\b/{\\textrm{in}}/g ;
#s/_initial/_{\\mathrm{initial}}/g ;
#s/\\intsphere/\\int_0^{2 \\pi} \\int_0^\\pi/g ;
#s/\\iso/{\\textrm{iso}}/g;
#s/k_B/k_{\\mathrm{B}}/g ;
#s/\\ketab\b/\\ket{a,b}/g ;
#s/\\kpsi/\\ket{\\Psi}/g ;
#s/\\ktpsi/\\ket{\\tilde{\\Psi}}/g ;
#s/\\lambdaL/\\lambda_{\\mathrm{L}}/g ;
#s/_laser/_{\\mathrm{laser}}/g ;
#s/\\L_/\\hat{L}_/g ;
#s/_\\L/_\\txtL/g ;
#s/\\L_m\b/\\hat{L}_{-}/g ;
#s/\\LOS/{\\textrm{LOS}}/g;
#s/\\L_p\b/\\hat{L}_{+}/g ;
#s/\\L_pm\b/\\hat{L}_{\\pm}/g ;
#s/\\L_x\b/\\hat{L}_x/g ;
#s/\\L_y\b/\\hat{L}_y/g ;
#s/\\L_z\b/\\hat{L}_z/g ;
#s/\\max\b/{\\mathrm{max}}/g ;
#s/_max/_{\\mathrm{max}}/g ;
#s/\\m\b/{-}/g ;
#s/\\me/m_{\\mathrm{e}}/g ;
#s/\\min\b/{\\mathrm{min}}/g ;
#s/_min/_{\\mathrm{min}}/g ;
#s/_mo/_{\\textrm{mo}}/g ;
#s/n1/n_1/g ;
#s/n2/n_2/g ;
#s/n3/n_3/g ;
#s/\\na\b/{n, \\alpha}/g ;
#s/N_c/N_{\\mathrm{c}}/g ;
#s/\\n(\d)\b/{\\Bn, $1}/g ;                                      # \Bu_\n1 -> \Bu_{\\Bn, 1}
#s/\\n(\d)\b/{n, $1}/g ;
#s/\\n-(\d)(\d)\b/{n - $1, $2}/g ;
#s/\\n\+(\d)(\d)\b/{n + $1, $2}/g ;
#s/\\ND/N_{\\mathrm{D}}/g ;
#s/Ndown/N_{\\downarrow}/g ;
#s/\\Nec/N_{\\mathrm{eff}}^{\\mathrm{C}}/g ;
#s/\\Nev/N_{\\mathrm{eff}}^{\\mathrm{V}}/g ;
#s/\\n_/\\hat{n}_/g ;
#s/\\nkd/_{-\\Bk \\downarrow}/g ;
#s/\\nku/_{-\\Bk \\uparrow}/g ;
#s/\\n *(\+|-|\\pm) *(\(\d *, *\d\))\b/{\\Bn $1 $2}/g ;           # \Bu_\n+(1,0) -> \Bu_{\Bn + (1,0)}
#s/\\n *(\+|-|\\pm) *(\(\d *, *\d\))(\d)\b/{\\Bn $1 $2, $3}/g ;  # \Bu_\n+(1,0)1 -> \Bu_{\Bn + (1,0), 1}
#s/\\ns/n_{\\mathrm{s}}/g ;
#s/Nup/N_{\\uparrow}/g ;
#s/\\omegac/\\omega_{\\text{cutoff}}/g ;
#s/\\omegaD/\\omega_{\\mathrm{D}}/g ;
#s/\\omegan/\\omega_\\nought/g ;
#s/_osc/_{\\mathrm{osc}}/g ;
s/\\p\b/{+}/g ;
#s/P_D/\\hat{\\calP}_{\\textrm{Dirac}}/g;
#s/\\phibar/\\overbar{\\phi}/g ;
#s/_ph/_{\\mathrm{ph}}/g ;
#s/pialpha\b/p_{i_\\alpha}/g ;
#s/pidotalpha/\\dot{p}_{i_\\alpha}/g ;
#s/\\pkd/_{\\Bk \\downarrow}/g ;
#s/\\pku/_{\\Bk \\uparrow}/g ;
#s/\\pp(.)/{($1)}/g ;
#s/\\PP/\\mathcal{P}/g ;
#s/\\Prad/P_{\\textrm{rad}}/g ;
#s/\\profE/Prof. Eleftheriades/g;
#s/P_r/P_{\\mathrm{rect}}/g ;
#s/P_s/P_{\\mathrm{sin}}/g ;
#s/\\qL/q_{\\mathrm{L}}/g ;
#s/{QM}/{\\mathrm{QM}}/g ;
#s/\\qT/q_{\\mathrm{T}}/g ;
#s/_quantum/_{\\mathrm{quantum}}/g ;
#s/\\rcap_av/\\rcap_{\\mathrm{av}}/g ;
#s/r\\ccube/_{r,\\textrm{ccube}}/g;
#s/\\ref\b/{\\textrm{ref}}/g ;
#s/\\R/\\hat{R}/g ;
#s/\\rhoel/\\rho_{\\mathrm{el}}/g ;
#s/\\rhohat\b/\\hat{\\rho}/g ;
#s/\\rhohat_/\\hat{\\rho}_/g ;
#s/\\rhoph/\\rho_{\\mathrm{ph}}/g ;
#s/r\\iso/_{r,\\textrm{iso}}/g;
#s/_\\R/_{\\mathrm{R}}/g;
#s/\\sg/{\\textrm{sg}}/g;
#s/\\Shat/\\hat{S}/g ;
#s/\\spacegrad_T/\\spacegrad_{\\mathrm{T}}/g ;
s/[Ss]chro\b/Schr\\"{o}dinger/g; # Schrodinger
s/[Ss]chrodinger/Schr\\"{o}dinger/g; # Schrodinger
#s/_subsystem/_{\\text{subsystem}}/g ;
#s/\\Ta/\\hat{T}_{a}/g ;
#s/\\TB/\\tilde{\\BB}/g;
#s/\\Te/\\hat{T}_{\\epsilon}/g ;
#s/\\TE/\\tilde{\\BE}/g;
#s/_\\T/_{\\mathrm{T}}/g;
#s/_T/_{\\mathrm{T}}/g ;
#s/\\tmax\b/{\\textrm{max}}/g ;
#s/\\tm\b/\\tilde{m}/g ;
#s/\\Tme/\\hat{T}_{-\\epsilon}/g ;
#s/\\tmin\b/{\\textrm{min}}/g ;
#s/\\tn\b/\\tilde{n}/g ;
#s/_total/_{\\mathrm{total}}/g ;
#s/\\tot\b/{\\textrm{tot}}/g ;
#s/\\tpsi/\\tilde{\\Psi}/g ;
#s/\\tp/\\tilde{p}/g ;
#s/\\trans\b/{\\textrm{trans}}/g ;
#s/\\tu/\\tilde{u}/g ;
#s/\\tx/\\tilde{x}/g ;
#s/\tY\b/\\tilde{Y}/g ;
#s/\\up\b/\\ket{\\uparrow}/g ;
#s/\\up\b/\\uparrow/g ;
#s/\\updown\b/\\ket{\\uparrow \\downarrow}/g ;
#s/\\upup\b/\\ket{\\uparrow \\uparrow}/g ;
#s/\\Veff/V_{\\mathrm{eff}}/g ;
#s/\\eff/{\\mathrm{eff}}/g ;
s/\\sup/{\\mathrm{sup}}/g ;
#s/\\Veph/V_{\\mathrm{e,ph}}/g ;
#s/_V/_{\\mathrm{V}}/g ;
#s/xialpha\b/x_{i_\\alpha}/g ;
#s/xidotalpha/\\dot{x}_{i_\\alpha}/g ;
#s/\\yz/{\\textrm{yz}}/g;
#s/\\zx/{\\textrm{zx}}/g;
