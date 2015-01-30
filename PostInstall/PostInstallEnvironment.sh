#!/bin/bash
################################################################################################
#                               Joshua Wyatt Smith                                             #
#                               joshua.wyatt.smith@cern.ch                                     #
################################################################################################
export TCMALLOCDIR=$LCG_install/tcmalloc/1.7p3/$CMTCONFIG/lib
export PATH=$PATH:$TopDir/AtlasCore/AtlasCore-$VERSION/InstallArea/share/bin
export PYTHONPATH=$PYTHONPATH:$ROOTDIR/Gaudi/InstallArea/$CMTCONFIG/jobOptions:$TopDir/AtlasCore/AtlasCore-$VERSION/InstallArea/jobOptions:$TopDir/AtlasCore/AtlasCore-$VERSION/InstallArea/python:$TopDir/AtlasCore/AtlasCore-$VERSION/Control/AthenaCommon/python:$ROOTDIR/Gaudi/InstallArea/$CMTCONFIG/python
export JOBOPTSEARCHPATH=$JOBOPTSEARCHPATH:$ROOTDIR/Gaudi/InstallArea/$CMTCONFIG/jobOptions:$TopDir/AtlasCore/AtlasCore-$VERSION/InstallArea/jobOptions
source $LCG_install/ROOT/v5-34-21/$CMTCONFIG/bin/thisroot.sh
