#!/bin/sh
################################################################################################
#                               Joshua Wyatt Smith                                             #
#                               joshua.wyatt.smith@cern.ch                                     #
################################################################################################
export ROOTDIR=/home/jwsmith/ANA
export CMTCONFIG=aarch64-ubuntu14.04-gcc49-opt
export CMAKECONFIG=aarch64-ubuntu14.04-gcc49-opt
export LCGCMT_VERS=74root6

source /home/jwsmith/CMT/*/mgr/setup.sh
export CMTBIN=Linux-aarch64
export CMTSITE=STANDALONE
export SVNROOT=svn+ssh://svn.cern.ch/reps/atlasoff
export VERSION=rel_6
export LCGCMT_VERS=LCGCMT_74root6
export TopDir=$ROOTDIR/rel_6

#CLHEP
export CPLUS_INCLUDE_PATH=/home/seuster/LCGStack/lcgcmake-install/clhep/2.1.4.1/aarch64-ubuntu14.04-gcc49-opt/include:$CPLUS_INCLUDE_PATH

#libunwind&gperf

export CPLUS_INCLUDE_PATH=/home/jwsmith/libunwind-install/include:/home/jwsmith/gperftools-install/include:$CPLUS_INCLUDE_PATH

##LCG
export LCG_install=/home/seuster/LCGStack/lcgcmake-install
##Gaudi
export GaudiDir=$ROOTDIR/GAUDI/GAUDI/rel_6

export SW_Extras=$ROOTDIR/sw_extras
