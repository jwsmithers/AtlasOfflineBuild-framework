# echo "cleanup XMLLookupService XMLLookupService-1-1-X-back in /home/jwsmith/HDD/CORAL/CORAL-2-4-2"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /home/jwsmith/HDD/lcgcmake-install-gcc49/cmt/v1r26p20140131/armv7l-fc21-gcc49-opt/CMT/v1r26p20140131
endif
source ${CMTROOT}/mgr/setup.csh
set cmtXMLLookupServicetempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtXMLLookupServicetempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=XMLLookupService -version=XMLLookupService-1-1-X-back -path=/home/jwsmith/HDD/CORAL/CORAL-2-4-2  $* >${cmtXMLLookupServicetempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=XMLLookupService -version=XMLLookupService-1-1-X-back -path=/home/jwsmith/HDD/CORAL/CORAL-2-4-2  $* >${cmtXMLLookupServicetempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtXMLLookupServicetempfile}
  unset cmtXMLLookupServicetempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtXMLLookupServicetempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtXMLLookupServicetempfile}
unset cmtXMLLookupServicetempfile
exit $cmtcleanupstatus
