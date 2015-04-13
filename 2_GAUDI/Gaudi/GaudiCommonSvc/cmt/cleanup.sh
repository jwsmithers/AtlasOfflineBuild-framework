# echo "cleanup GaudiCommonSvc v3r2 in /home/jwsmith/HDD/Gaudi"

if test "${CMTROOT}" = ""; then
  CMTROOT=/home/jwsmith/HDD/lcgcmake-install-gcc49/cmt/v1r26p20140131/armv7l-fc21-gcc49-opt/CMT/v1r26p20140131; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtGaudiCommonSvctempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtGaudiCommonSvctempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=GaudiCommonSvc -version=v3r2 -path=/home/jwsmith/HDD/Gaudi  $* >${cmtGaudiCommonSvctempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=GaudiCommonSvc -version=v3r2 -path=/home/jwsmith/HDD/Gaudi  $* >${cmtGaudiCommonSvctempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtGaudiCommonSvctempfile}
  unset cmtGaudiCommonSvctempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtGaudiCommonSvctempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtGaudiCommonSvctempfile}
unset cmtGaudiCommonSvctempfile
return $cmtcleanupstatus
