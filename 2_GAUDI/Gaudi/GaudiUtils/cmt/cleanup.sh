# echo "cleanup GaudiUtils v5r2 in /home/jwsmith/HDD/Gaudi"

if test "${CMTROOT}" = ""; then
  CMTROOT=/home/jwsmith/HDD/lcgcmake-install-gcc49/cmt/v1r26p20140131/armv7l-fc21-gcc49-opt/CMT/v1r26p20140131; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtGaudiUtilstempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtGaudiUtilstempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=GaudiUtils -version=v5r2 -path=/home/jwsmith/HDD/Gaudi  $* >${cmtGaudiUtilstempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=GaudiUtils -version=v5r2 -path=/home/jwsmith/HDD/Gaudi  $* >${cmtGaudiUtilstempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtGaudiUtilstempfile}
  unset cmtGaudiUtilstempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtGaudiUtilstempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtGaudiUtilstempfile}
unset cmtGaudiUtilstempfile
return $cmtcleanupstatus
