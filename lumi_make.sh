./configure \
--enable-mpi --enable-par-linalg --enable-memory-profile --enable-open-mp \
CPP=cpp \
FPP="cpp -E -traditional" \
FCFLAGS='-fallow-argument-mismatch -O3 -g -mtune=native -fopenmp' \
CFLAGS='-O3 -g -mtune=native -fopenmp' \
CC=cc CXX=CC FC=ftn F77=ftn F90=ftn MPICC=cc MPICXX=CC MPIF77=ftn MPIF90=ftn MPIFC=ftn \
--enable-hdf5-compression --enable-hdf5-par-io --enable-hdf5-p2y-support \
--with-blas-libs="-L$CRAY_LIBSCI_PREFIX_DIR/lib -lsci_gnu_mpi" \
--with-lapack-libs="-L$CRAY_LIBSCI_PREFIX_DIR/lib -lsci_gnu_mpi" \
--with-blacs-libs="-L$CRAY_LIBSCI_PREFIX_DIR/lib -lsci_gnu_mpi" \
--with-scalapack-libs="-L$CRAY_LIBSCI_PREFIX_DIR/lib -lsci_gnu_mpi" \
--with-fft-path="$FFTW_ROOT" \
--with-hdf5-path="$HDF5_ROOT" \
--with-netcdff-path="$NETCDF_DIR" \
--with-netcdf-path="$NETCDF_DIR" 

#FPP="cpp -E -P -cpp" \
#FCFLAGS='-O3 -g -mtune=native ' \
#HDF5_LIBS="-L$HDF5_ROOT/lib -lhdf5_fortran -lhdf5hl_fortran" \


# NO, shouldn't do these, otherwise ypp is somehow masked by yambo, e.g.
# If I run `ypp -h`, it shows the `yambo -h`
# somehow I need to add yambo.o for ypp
# cd driver/
#ftn -fallow-argument-mismatch -O3 -g -mtune=native    -fopenmp  -I/projappl/project_465000028/juqiao/phase2/yambo/include -I/projappl/project_465000028/juqiao/phase2/yambo/include/headers/common -I/projappl/project_465000028/juqiao/phase2/yambo/include/headers/parser -I/projappl/project_465000028/juqiao/phase2/yambo/lib/yambo/driver/include -I/projappl/project_465000028/juqiao/phase2/yambo/include/driver -I/projappl/project_465000028/juqiao/phase2/yambo/lib/external/unknown/ftn/include/      -I/opt/cray/pe/hdf5-parallel/1.12.0.7/gnu/9.1/include -I/projappl/project_465000028/juqiao/phase2/yambo/lib/external/unknown/ftn/include    -I/projappl/project_465000028/juqiao/phase2/yambo/lib/yambo/driver/include -I/projappl/project_465000028/juqiao/phase2/yambo/include/driver -o ypp driver.o ypp.o yambo.o -L/projappl/project_465000028/juqiao/phase2/yambo/lib \
#-lbse -lacfdt -lqp -lpol_function -ldipoles -ltddft -lsetup -lqp_control -linterpolate -lcoulomb -lwf_and_fft -lstop_and_restart -linterface -lxc_functionals -lio -lYio -ltiming -lcommon -lcommunicate -lparser -lparallel -lbz_ops -llinear_algebra -lmatrices -lmodules -lcommunicate -lmemory -ltools -lyambo_Ydriver_main -lyambo_Ydriver_interface -lyambo_Ydriver_options -ldriver   -lqe_pseudo -lmath77 -lslatec -llocal \
#-l_ypp_excitons -l_ypp_dipoles -l_ypp_electrons -l_ypp_bits -l_ypp_symmetries -l_ypp_k-points -l_ypp_plotting -l_ypp_qp -l_ypp_interface -l_ypp_modules -lbse -lqp -lel-ph -lpol_function -ldipoles -ltddft -linterface -lsetup -lqp_control -linterpolate -lcoulomb -lwf_and_fft -lstop_and_restart -linterface -lxc_functionals -lio -lYio -ltiming -lcommon -lcommunicate -lparser -lparallel -lbz_ops -llinear_algebra -lmatrices -lmodules -lcommunicate -lmemory -ltools -lypp_Ydriver_main -lypp_Ydriver_interface -lypp_Ydriver_options -ldriver   -lqe_pseudo -lmath77 -lslatec -llocal -L/opt/cray/pe/libsci/21.08.1.2/GNU/9.1/x86_64/lib -lsci_gnu_mpi   -L/opt/cray/pe/libsci/21.08.1.2/GNU/9.1/x86_64/lib -lsci_gnu_mpi -L/opt/cray/pe/libsci/21.08.1.2/GNU/9.1/x86_64/lib -lsci_gnu_mpi -L/opt/cray/pe/libsci/21.08.1.2/GNU/9.1/x86_64/lib -lsci_gnu_mpi /projappl/project_465000028/juqiao/phase2/yambo/lib/external/unknown/ftn/lib/libiotk.a    -L/opt/cray/pe/hdf5-parallel/1.12.0.7/gnu/9.1/lib -lhdf5hl_fortran -lhdf5_fortran -lhdf5_hl -lhdf5 -lz -lm -ldl -lcurl /projappl/project_465000028/juqiao/phase2/yambo/lib/external/unknown/ftn/lib/libxcf90.a /projappl/project_465000028/juqiao/phase2/yambo/lib/external/unknown/ftn/lib/libxcf03.a  /projappl/project_465000028/juqiao/phase2/yambo/lib/external/unknown/ftn/lib/libxc.a -L/opt/cray/pe/fftw/3.3.8.12/x86_milan/lib -lfftw3   -lm
#
#if test -f ypp; then rm -f /projappl/project_465000028/juqiao/phase2/yambo/config/stamps_and_lists/compiling_ypp.stamp; touch /projappl/project_465000028/juqiao/phase2/yambo/config/stamps_and_lists/ypp.stamp; fi
#if test -f ypp; then mv ypp /projappl/project_465000028/juqiao/phase2/yambo/bin;fi
#
#
## same for p2y
## cd interfaces/p2y
#ftn -fallow-argument-mismatch -O3 -g -mtune=native    -fopenmp  -I/projappl/project_465000028/juqiao/phase2/yambo/include -I/projappl/project_465000028/juqiao/phase2/yambo/include/headers/common -I/projappl/project_465000028/juqiao/phase2/yambo/include/headers/parser -I/projappl/project_465000028/juqiao/phase2/yambo/lib/yambo/driver/include -I/projappl/project_465000028/juqiao/phase2/yambo/include/driver -I/projappl/project_465000028/juqiao/phase2/yambo/lib/external/unknown/ftn/include/      -I/opt/cray/pe/hdf5-parallel/1.12.0.7/gnu/9.1/include -I/projappl/project_465000028/juqiao/phase2/yambo/lib/external/unknown/ftn/include    -I/projappl/project_465000028/juqiao/phase2/yambo/lib/yambo/driver/include -I/projappl/project_465000028/juqiao/phase2/yambo/include/driver -o p2y driver.o mod_pw_data.o qexml.o qexsd_p2y.o qeh5_module.o qexpt_p2y.o atmproj_tools.o        pw_pseudo_read.o mod_p2y.o numrec_kinds.o mod_numerical.o        numrec_module.o numrec_locate.o numrec_polint.o numrec_polcof.o numrec_ddpoly.o num_interpolation_module.o        pw_struct_module.o pw_basis_module.o pw_wfc_module.o        pw_pseudo_module.o pw_atoms_module.o pw_setqf.o qe_pseudo_init.o        p2y_atmproj.o p2y_pseudo.o PP_PWscf_comp.o PP_PWscf_comp_nlcc.o p2y_db1.o p2y_wf.o p2y.o ../../driver/yambo.o -L/projappl/project_465000028/juqiao/phase2/yambo/lib \
#-lbse -lacfdt -lqp -lpol_function -ldipoles -ltddft -lsetup -lqp_control -linterpolate -lcoulomb -lwf_and_fft -lstop_and_restart -linterface -lxc_functionals -lio -lYio -ltiming -lcommon -lcommunicate -lparser -lparallel -lbz_ops -llinear_algebra -lmatrices -lmodules -lcommunicate -lmemory -ltools -lyambo_Ydriver_main -lyambo_Ydriver_interface -lyambo_Ydriver_options -ldriver   -lqe_pseudo -lmath77 -lslatec -llocal \
#-lint_modules -lbz_ops -lstop_and_restart -linterface -lsetup -lio -lYio -ltiming -lcommon -lcommunicate -lparser -lparallel -llinear_algebra -lmatrices -lmodules -lcommunicate -lmemory -ltools -lp2y_Ydriver_main -lp2y_Ydriver_interface -lp2y_Ydriver_options -ldriver   -lqe_pseudo -lmath77 -lslatec -llocal -L/opt/cray/pe/libsci/21.08.1.2/GNU/9.1/x86_64/lib -lsci_gnu_mpi   -L/opt/cray/pe/libsci/21.08.1.2/GNU/9.1/x86_64/lib -lsci_gnu_mpi -L/opt/cray/pe/libsci/21.08.1.2/GNU/9.1/x86_64/lib -lsci_gnu_mpi -L/opt/cray/pe/libsci/21.08.1.2/GNU/9.1/x86_64/lib -lsci_gnu_mpi /projappl/project_465000028/juqiao/phase2/yambo/lib/external/unknown/ftn/lib/libiotk.a    -L/opt/cray/pe/hdf5-parallel/1.12.0.7/gnu/9.1/lib -lhdf5hl_fortran -lhdf5_fortran -lhdf5_hl -lhdf5 -lz -lm -ldl -lcurl /projappl/project_465000028/juqiao/phase2/yambo/lib/external/unknown/ftn/lib/libxcf90.a /projappl/project_465000028/juqiao/phase2/yambo/lib/external/unknown/ftn/lib/libxcf03.a  /projappl/project_465000028/juqiao/phase2/yambo/lib/external/unknown/ftn/lib/libxc.a -L/opt/cray/pe/fftw/3.3.8.12/x86_milan/lib -lfftw3   -lm
#
#if test -f p2y; then rm -f /projappl/project_465000028/juqiao/phase2/yambo/config/stamps_and_lists/compiling_p2y.stamp; touch /projappl/project_465000028/juqiao/phase2/yambo/config/stamps_and_lists/p2y.stamp; fi
#MODS=`find . -name '*.mod'`;for modfile in $MODS ; do mv $modfile /projappl/project_465000028/juqiao/phase2/yambo/include; done
#if test ! -d /projappl/project_465000028/juqiao/phase2/yambo/bin; then mkdir /projappl/project_465000028/juqiao/phase2/yambo/bin;fi
#if test -f p2y; then mv p2y /projappl/project_465000028/juqiao/phase2/yambo/bin;fi
