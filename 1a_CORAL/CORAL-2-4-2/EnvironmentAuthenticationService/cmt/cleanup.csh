# echo "cleanup EnvironmentAuthenticationService EnvironmentAuthenticationService-1-2-0 in /home/jwsmith/HDD/CORAL/CORAL-2-4-2"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /home/jwsmith/HDD/lcgcmake-install-gcc49/cmt/v1r26p20140131/armv7l-fc21-gcc49-opt/CMT/v1r26p20140131
endif
source ${CMTROOT}/mgr/setup.csh
set cmtEnvironmentAuthenticationServicetempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtEnvironmentAuthenticationServicetempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=EnvironmentAuthenticationService -version=EnvironmentAuthenticationService-1-2-0 -path=/home/jwsmith/HDD/CORAL/CORAL-2-4-2  $* >${cmtEnvironmentAuthenticationServicetempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=EnvironmentAuthenticationService -version=EnvironmentAuthenticationService-1-2-0 -path=/home/jwsmith/HDD/CORAL/CORAL-2-4-2  $* >${cmtEnvironmentAuthenticationServicetempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtEnvironmentAuthenticationServicetempfile}
  unset cmtEnvironmentAuthenticationServicetempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtEnvironmentAuthenticationServicetempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtEnvironmentAuthenticationServicetempfile}
unset cmtEnvironmentAuthenticationServicetempfile
exit $cmtcleanupstatus
