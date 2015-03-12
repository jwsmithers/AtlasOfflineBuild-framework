#!/bin/sh
################################################################################################
#                               Joshua Wyatt Smith                                             #
#                               joshua.wyatt.smith@cern.ch                                     #
################################################################################################

#This script calls the various tests available to AtlasCore and runs them within the ANA framework

for file in $TopDir/AtlasConditions/AtlasConditions-$VERSION/InstallArea/jobOptions/*/*.py
	do
		echo "Running tests on $file"
		echo 
		get_files -jo "${file##*/}"
		athena.py "${file##*/}" | tee "${file##*/}"-Out.html
	done
