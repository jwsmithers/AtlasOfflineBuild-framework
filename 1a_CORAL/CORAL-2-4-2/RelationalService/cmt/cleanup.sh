# echo "cleanup RelationalService RelationalService-1-1-0 in /home/jwsmith/HDD/CORAL/CORAL-2-4-2"

if test "${CMTROOT}" = ""; then
  CMTROOT=/home/jwsmith/HDD/lcgcmake-install-gcc49/cmt/v1r26p20140131/armv7l-fc21-gcc49-opt/CMT/v1r26p20140131; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtRelationalServicetempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtRelationalServicetempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=RelationalService -version=RelationalService-1-1-0 -path=/home/jwsmith/HDD/CORAL/CORAL-2-4-2  $* >${cmtRelationalServicetempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=RelationalService -version=RelationalService-1-1-0 -path=/home/jwsmith/HDD/CORAL/CORAL-2-4-2  $* >${cmtRelationalServicetempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtRelationalServicetempfile}
  unset cmtRelationalServicetempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtRelationalServicetempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtRelationalServicetempfile}
unset cmtRelationalServicetempfile
return $cmtcleanupstatus
