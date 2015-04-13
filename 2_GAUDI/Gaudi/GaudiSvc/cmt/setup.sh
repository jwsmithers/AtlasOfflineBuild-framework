# echo "setup GaudiSvc v21r3 in /home/jwsmith/HDD/Gaudi"

if test "${CMTROOT}" = ""; then
  CMTROOT=/home/jwsmith/HDD/lcgcmake-install-gcc49/cmt/v1r26p20140131/armv7l-fc21-gcc49-opt/CMT/v1r26p20140131; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtGaudiSvctempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtGaudiSvctempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=GaudiSvc -version=v21r3 -path=/home/jwsmith/HDD/Gaudi  -no_cleanup $* >${cmtGaudiSvctempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=GaudiSvc -version=v21r3 -path=/home/jwsmith/HDD/Gaudi  -no_cleanup $* >${cmtGaudiSvctempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtGaudiSvctempfile}
  unset cmtGaudiSvctempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtGaudiSvctempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtGaudiSvctempfile}
unset cmtGaudiSvctempfile
return $cmtsetupstatus
