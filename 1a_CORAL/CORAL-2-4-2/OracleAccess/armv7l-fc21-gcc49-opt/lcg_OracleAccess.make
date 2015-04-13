#-- start of make_header -----------------

#====================================
#  Library lcg_OracleAccess
#
#   Generated Tue Mar 31 10:24:32 2015  by jwsmith
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_lcg_OracleAccess_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_lcg_OracleAccess_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_lcg_OracleAccess

OracleAccess_tag = $(tag)

#cmt_local_tagfile_lcg_OracleAccess = $(OracleAccess_tag)_lcg_OracleAccess.make
cmt_local_tagfile_lcg_OracleAccess = $(bin)$(OracleAccess_tag)_lcg_OracleAccess.make

else

tags      = $(tag),$(CMTEXTRATAGS)

OracleAccess_tag = $(tag)

#cmt_local_tagfile_lcg_OracleAccess = $(OracleAccess_tag).make
cmt_local_tagfile_lcg_OracleAccess = $(bin)$(OracleAccess_tag).make

endif

include $(cmt_local_tagfile_lcg_OracleAccess)
#-include $(cmt_local_tagfile_lcg_OracleAccess)

ifdef cmt_lcg_OracleAccess_has_target_tag

cmt_final_setup_lcg_OracleAccess = $(bin)setup_lcg_OracleAccess.make
cmt_dependencies_in_lcg_OracleAccess = $(bin)dependencies_lcg_OracleAccess.in
#cmt_final_setup_lcg_OracleAccess = $(bin)OracleAccess_lcg_OracleAccesssetup.make
cmt_local_lcg_OracleAccess_makefile = $(bin)lcg_OracleAccess.make

else

cmt_final_setup_lcg_OracleAccess = $(bin)setup.make
cmt_dependencies_in_lcg_OracleAccess = $(bin)dependencies.in
#cmt_final_setup_lcg_OracleAccess = $(bin)OracleAccesssetup.make
cmt_local_lcg_OracleAccess_makefile = $(bin)lcg_OracleAccess.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)OracleAccesssetup.make

#lcg_OracleAccess :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'lcg_OracleAccess'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = lcg_OracleAccess/
#lcg_OracleAccess::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

lcg_OracleAccesslibname   = $(bin)$(library_prefix)lcg_OracleAccess$(library_suffix)
lcg_OracleAccesslib       = $(lcg_OracleAccesslibname).a
lcg_OracleAccessstamp     = $(bin)lcg_OracleAccess.stamp
lcg_OracleAccessshstamp   = $(bin)lcg_OracleAccess.shstamp

lcg_OracleAccess :: dirs  lcg_OracleAccessLIB
	$(echo) "lcg_OracleAccess ok"

cmt_lcg_OracleAccess_has_prototypes = 1

#--------------------------------------

ifdef cmt_lcg_OracleAccess_has_prototypes

lcg_OracleAccessprototype :  ;

endif

lcg_OracleAccesscompile : $(bin)View.o $(bin)OutputVariableHolder.o $(bin)Query.o $(bin)TableDescriptionProxy.o $(bin)OracleErrorHandler.o $(bin)ColumnProxy.o $(bin)Table.o $(bin)ConnectionProperties.o $(bin)Transaction.o $(bin)QueryDefinition.o $(bin)Schema.o $(bin)Cursor.o $(bin)Session.o $(bin)module.o $(bin)MonitorController.o $(bin)TypeConverter.o $(bin)OperationWithQuery.o $(bin)PrivilegeManager.o $(bin)ViewFactory.o $(bin)BulkOperation.o $(bin)Connection.o $(bin)DomainPropertyNames.o $(bin)DataEditor.o $(bin)BulkOperationWithQuery.o $(bin)OracleStatement.o $(bin)DomainProperties.o $(bin)SessionProperties.o $(bin)OracleTableBuilder.o $(bin)Domain.o $(bin)BindVariableHolder.o ;

#-- end of libary_header ----------------
#-- start of libary ----------------------

lcg_OracleAccessLIB :: $(lcg_OracleAccesslib) $(lcg_OracleAccessshstamp)
	@/bin/echo "------> lcg_OracleAccess : library ok"

$(lcg_OracleAccesslib) :: $(bin)View.o $(bin)OutputVariableHolder.o $(bin)Query.o $(bin)TableDescriptionProxy.o $(bin)OracleErrorHandler.o $(bin)ColumnProxy.o $(bin)Table.o $(bin)ConnectionProperties.o $(bin)Transaction.o $(bin)QueryDefinition.o $(bin)Schema.o $(bin)Cursor.o $(bin)Session.o $(bin)module.o $(bin)MonitorController.o $(bin)TypeConverter.o $(bin)OperationWithQuery.o $(bin)PrivilegeManager.o $(bin)ViewFactory.o $(bin)BulkOperation.o $(bin)Connection.o $(bin)DomainPropertyNames.o $(bin)DataEditor.o $(bin)BulkOperationWithQuery.o $(bin)OracleStatement.o $(bin)DomainProperties.o $(bin)SessionProperties.o $(bin)OracleTableBuilder.o $(bin)Domain.o $(bin)BindVariableHolder.o
	$(lib_echo) library
	$(lib_silent) cd $(bin); \
	  $(ar) $(lcg_OracleAccesslib) $?
	$(lib_silent) $(ranlib) $(lcg_OracleAccesslib)
	$(lib_silent) cat /dev/null >$(lcg_OracleAccessstamp)

#------------------------------------------------------------------
#  Future improvement? to empty the object files after
#  storing in the library
#
##	  for f in $?; do \
##	    rm $${f}; touch $${f}; \
##	  done
#------------------------------------------------------------------

#
# We add one level of dependency upon the true shared library 
# (rather than simply upon the stamp file)
# this is for cases where the shared library has not been built
# while the stamp was created (error??) 
#

$(lcg_OracleAccesslibname).$(shlibsuffix) :: $(lcg_OracleAccesslib)
	$(lib_silent) cd $(bin); QUIET=$(QUIET); $(make_shlib) "$(tags)" lcg_OracleAccess $(lcg_OracleAccess_shlibflags)

$(lcg_OracleAccessshstamp) :: $(lcg_OracleAccesslibname).$(shlibsuffix)
	@if test -f $(lcg_OracleAccesslibname).$(shlibsuffix) ; then cat /dev/null >$(lcg_OracleAccessshstamp) ; fi

lcg_OracleAccessclean ::
	$(cleanup_echo) objects
	$(cleanup_silent) cd $(bin); /bin/rm -f $(bin)View.o $(bin)OutputVariableHolder.o $(bin)Query.o $(bin)TableDescriptionProxy.o $(bin)OracleErrorHandler.o $(bin)ColumnProxy.o $(bin)Table.o $(bin)ConnectionProperties.o $(bin)Transaction.o $(bin)QueryDefinition.o $(bin)Schema.o $(bin)Cursor.o $(bin)Session.o $(bin)module.o $(bin)MonitorController.o $(bin)TypeConverter.o $(bin)OperationWithQuery.o $(bin)PrivilegeManager.o $(bin)ViewFactory.o $(bin)BulkOperation.o $(bin)Connection.o $(bin)DomainPropertyNames.o $(bin)DataEditor.o $(bin)BulkOperationWithQuery.o $(bin)OracleStatement.o $(bin)DomainProperties.o $(bin)SessionProperties.o $(bin)OracleTableBuilder.o $(bin)Domain.o $(bin)BindVariableHolder.o

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/${libdirname}
lcg_OracleAccessinstallname = $(library_prefix)lcg_OracleAccess$(library_suffix).$(shlibsuffix)

lcg_OracleAccess :: lcg_OracleAccessinstall

install :: lcg_OracleAccessinstall

lcg_OracleAccessinstall :: $(install_dir)/$(lcg_OracleAccessinstallname)
	@if test ! "${CMTINSTALLAREA}" = ""; then\
	  echo "installation done"; \
	fi

$(install_dir)/$(lcg_OracleAccessinstallname) :: $(bin)$(lcg_OracleAccessinstallname)
	@if test ! "${CMTINSTALLAREA}" = ""; then \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$(PACKAGE_ROOT)/$(tag)" "$(lcg_OracleAccessinstallname)" "$(install_dir)" "$(cmt_install_area_command)" ; \
	fi

lcg_OracleAccessclean :: lcg_OracleAccessuninstall

uninstall :: lcg_OracleAccessuninstall

lcg_OracleAccessuninstall ::
	@if test ! "${CMTINSTALLAREA}" = ""; then \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$(PACKAGE_ROOT)/$(tag)" "$(lcg_OracleAccessinstallname)" "$(install_dir)" ; \
	fi


#-- end of libary -----------------------
#-- start of dependencies ------------------
ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
ifneq ($(MAKECMDGOALS),lcg_OracleAccessprototype)

$(bin)lcg_OracleAccess_dependencies.make : $(use_requirements) $(cmt_final_setup_lcg_OracleAccess)
	$(echo) "(lcg_OracleAccess.make) Rebuilding $@"; \
	  $(build_dependencies) -out=$@ -start_all $(src)View.cpp $(src)OutputVariableHolder.cpp $(src)Query.cpp $(src)TableDescriptionProxy.cpp $(src)OracleErrorHandler.cpp $(src)ColumnProxy.cpp $(src)Table.cpp $(src)ConnectionProperties.cpp $(src)Transaction.cpp $(src)QueryDefinition.cpp $(src)Schema.cpp $(src)Cursor.cpp $(src)Session.cpp $(src)module.cpp $(src)MonitorController.cpp $(src)TypeConverter.cpp $(src)OperationWithQuery.cpp $(src)PrivilegeManager.cpp $(src)ViewFactory.cpp $(src)BulkOperation.cpp $(src)Connection.cpp $(src)DomainPropertyNames.cpp $(src)DataEditor.cpp $(src)BulkOperationWithQuery.cpp $(src)OracleStatement.cpp $(src)DomainProperties.cpp $(src)SessionProperties.cpp $(src)OracleTableBuilder.cpp $(src)Domain.cpp $(src)BindVariableHolder.cpp -end_all $(includes) $(app_lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) -name=lcg_OracleAccess $? -f=$(cmt_dependencies_in_lcg_OracleAccess) -without_cmt

-include $(bin)lcg_OracleAccess_dependencies.make

endif
endif
endif

lcg_OracleAccessclean ::
	$(cleanup_silent) \rm -rf $(bin)lcg_OracleAccess_deps $(bin)lcg_OracleAccess_dependencies.make
#-- end of dependencies -------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)View.d

$(bin)$(binobj)View.d :

$(bin)$(binobj)View.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)View.o : $(src)View.cpp
	$(cpp_echo) $(src)View.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(View_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(View_cppflags) $(View_cpp_cppflags)  $(src)View.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(View_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)View.cpp

$(bin)$(binobj)View.o : $(View_cpp_dependencies)
	$(cpp_echo) $(src)View.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(View_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(View_cppflags) $(View_cpp_cppflags)  $(src)View.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)OutputVariableHolder.d

$(bin)$(binobj)OutputVariableHolder.d :

$(bin)$(binobj)OutputVariableHolder.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)OutputVariableHolder.o : $(src)OutputVariableHolder.cpp
	$(cpp_echo) $(src)OutputVariableHolder.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(OutputVariableHolder_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(OutputVariableHolder_cppflags) $(OutputVariableHolder_cpp_cppflags)  $(src)OutputVariableHolder.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(OutputVariableHolder_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)OutputVariableHolder.cpp

$(bin)$(binobj)OutputVariableHolder.o : $(OutputVariableHolder_cpp_dependencies)
	$(cpp_echo) $(src)OutputVariableHolder.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(OutputVariableHolder_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(OutputVariableHolder_cppflags) $(OutputVariableHolder_cpp_cppflags)  $(src)OutputVariableHolder.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)Query.d

$(bin)$(binobj)Query.d :

$(bin)$(binobj)Query.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)Query.o : $(src)Query.cpp
	$(cpp_echo) $(src)Query.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Query_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Query_cppflags) $(Query_cpp_cppflags)  $(src)Query.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(Query_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)Query.cpp

$(bin)$(binobj)Query.o : $(Query_cpp_dependencies)
	$(cpp_echo) $(src)Query.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Query_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Query_cppflags) $(Query_cpp_cppflags)  $(src)Query.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TableDescriptionProxy.d

$(bin)$(binobj)TableDescriptionProxy.d :

$(bin)$(binobj)TableDescriptionProxy.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)TableDescriptionProxy.o : $(src)TableDescriptionProxy.cpp
	$(cpp_echo) $(src)TableDescriptionProxy.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(TableDescriptionProxy_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(TableDescriptionProxy_cppflags) $(TableDescriptionProxy_cpp_cppflags)  $(src)TableDescriptionProxy.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(TableDescriptionProxy_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)TableDescriptionProxy.cpp

$(bin)$(binobj)TableDescriptionProxy.o : $(TableDescriptionProxy_cpp_dependencies)
	$(cpp_echo) $(src)TableDescriptionProxy.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(TableDescriptionProxy_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(TableDescriptionProxy_cppflags) $(TableDescriptionProxy_cpp_cppflags)  $(src)TableDescriptionProxy.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)OracleErrorHandler.d

$(bin)$(binobj)OracleErrorHandler.d :

$(bin)$(binobj)OracleErrorHandler.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)OracleErrorHandler.o : $(src)OracleErrorHandler.cpp
	$(cpp_echo) $(src)OracleErrorHandler.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(OracleErrorHandler_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(OracleErrorHandler_cppflags) $(OracleErrorHandler_cpp_cppflags)  $(src)OracleErrorHandler.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(OracleErrorHandler_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)OracleErrorHandler.cpp

$(bin)$(binobj)OracleErrorHandler.o : $(OracleErrorHandler_cpp_dependencies)
	$(cpp_echo) $(src)OracleErrorHandler.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(OracleErrorHandler_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(OracleErrorHandler_cppflags) $(OracleErrorHandler_cpp_cppflags)  $(src)OracleErrorHandler.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)ColumnProxy.d

$(bin)$(binobj)ColumnProxy.d :

$(bin)$(binobj)ColumnProxy.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)ColumnProxy.o : $(src)ColumnProxy.cpp
	$(cpp_echo) $(src)ColumnProxy.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(ColumnProxy_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(ColumnProxy_cppflags) $(ColumnProxy_cpp_cppflags)  $(src)ColumnProxy.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(ColumnProxy_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)ColumnProxy.cpp

$(bin)$(binobj)ColumnProxy.o : $(ColumnProxy_cpp_dependencies)
	$(cpp_echo) $(src)ColumnProxy.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(ColumnProxy_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(ColumnProxy_cppflags) $(ColumnProxy_cpp_cppflags)  $(src)ColumnProxy.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)Table.d

$(bin)$(binobj)Table.d :

$(bin)$(binobj)Table.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)Table.o : $(src)Table.cpp
	$(cpp_echo) $(src)Table.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Table_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Table_cppflags) $(Table_cpp_cppflags)  $(src)Table.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(Table_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)Table.cpp

$(bin)$(binobj)Table.o : $(Table_cpp_dependencies)
	$(cpp_echo) $(src)Table.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Table_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Table_cppflags) $(Table_cpp_cppflags)  $(src)Table.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)ConnectionProperties.d

$(bin)$(binobj)ConnectionProperties.d :

$(bin)$(binobj)ConnectionProperties.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)ConnectionProperties.o : $(src)ConnectionProperties.cpp
	$(cpp_echo) $(src)ConnectionProperties.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(ConnectionProperties_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(ConnectionProperties_cppflags) $(ConnectionProperties_cpp_cppflags)  $(src)ConnectionProperties.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(ConnectionProperties_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)ConnectionProperties.cpp

$(bin)$(binobj)ConnectionProperties.o : $(ConnectionProperties_cpp_dependencies)
	$(cpp_echo) $(src)ConnectionProperties.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(ConnectionProperties_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(ConnectionProperties_cppflags) $(ConnectionProperties_cpp_cppflags)  $(src)ConnectionProperties.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)Transaction.d

$(bin)$(binobj)Transaction.d :

$(bin)$(binobj)Transaction.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)Transaction.o : $(src)Transaction.cpp
	$(cpp_echo) $(src)Transaction.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Transaction_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Transaction_cppflags) $(Transaction_cpp_cppflags)  $(src)Transaction.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(Transaction_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)Transaction.cpp

$(bin)$(binobj)Transaction.o : $(Transaction_cpp_dependencies)
	$(cpp_echo) $(src)Transaction.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Transaction_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Transaction_cppflags) $(Transaction_cpp_cppflags)  $(src)Transaction.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)QueryDefinition.d

$(bin)$(binobj)QueryDefinition.d :

$(bin)$(binobj)QueryDefinition.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)QueryDefinition.o : $(src)QueryDefinition.cpp
	$(cpp_echo) $(src)QueryDefinition.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(QueryDefinition_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(QueryDefinition_cppflags) $(QueryDefinition_cpp_cppflags)  $(src)QueryDefinition.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(QueryDefinition_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)QueryDefinition.cpp

$(bin)$(binobj)QueryDefinition.o : $(QueryDefinition_cpp_dependencies)
	$(cpp_echo) $(src)QueryDefinition.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(QueryDefinition_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(QueryDefinition_cppflags) $(QueryDefinition_cpp_cppflags)  $(src)QueryDefinition.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)Schema.d

$(bin)$(binobj)Schema.d :

$(bin)$(binobj)Schema.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)Schema.o : $(src)Schema.cpp
	$(cpp_echo) $(src)Schema.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Schema_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Schema_cppflags) $(Schema_cpp_cppflags)  $(src)Schema.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(Schema_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)Schema.cpp

$(bin)$(binobj)Schema.o : $(Schema_cpp_dependencies)
	$(cpp_echo) $(src)Schema.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Schema_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Schema_cppflags) $(Schema_cpp_cppflags)  $(src)Schema.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)Cursor.d

$(bin)$(binobj)Cursor.d :

$(bin)$(binobj)Cursor.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)Cursor.o : $(src)Cursor.cpp
	$(cpp_echo) $(src)Cursor.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Cursor_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Cursor_cppflags) $(Cursor_cpp_cppflags)  $(src)Cursor.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(Cursor_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)Cursor.cpp

$(bin)$(binobj)Cursor.o : $(Cursor_cpp_dependencies)
	$(cpp_echo) $(src)Cursor.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Cursor_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Cursor_cppflags) $(Cursor_cpp_cppflags)  $(src)Cursor.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)Session.d

$(bin)$(binobj)Session.d :

$(bin)$(binobj)Session.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)Session.o : $(src)Session.cpp
	$(cpp_echo) $(src)Session.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Session_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Session_cppflags) $(Session_cpp_cppflags)  $(src)Session.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(Session_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)Session.cpp

$(bin)$(binobj)Session.o : $(Session_cpp_dependencies)
	$(cpp_echo) $(src)Session.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Session_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Session_cppflags) $(Session_cpp_cppflags)  $(src)Session.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)module.d

$(bin)$(binobj)module.d :

$(bin)$(binobj)module.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)module.o : $(src)module.cpp
	$(cpp_echo) $(src)module.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(module_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(module_cppflags) $(module_cpp_cppflags)  $(src)module.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(module_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)module.cpp

$(bin)$(binobj)module.o : $(module_cpp_dependencies)
	$(cpp_echo) $(src)module.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(module_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(module_cppflags) $(module_cpp_cppflags)  $(src)module.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MonitorController.d

$(bin)$(binobj)MonitorController.d :

$(bin)$(binobj)MonitorController.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)MonitorController.o : $(src)MonitorController.cpp
	$(cpp_echo) $(src)MonitorController.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(MonitorController_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(MonitorController_cppflags) $(MonitorController_cpp_cppflags)  $(src)MonitorController.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(MonitorController_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)MonitorController.cpp

$(bin)$(binobj)MonitorController.o : $(MonitorController_cpp_dependencies)
	$(cpp_echo) $(src)MonitorController.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(MonitorController_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(MonitorController_cppflags) $(MonitorController_cpp_cppflags)  $(src)MonitorController.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TypeConverter.d

$(bin)$(binobj)TypeConverter.d :

$(bin)$(binobj)TypeConverter.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)TypeConverter.o : $(src)TypeConverter.cpp
	$(cpp_echo) $(src)TypeConverter.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(TypeConverter_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(TypeConverter_cppflags) $(TypeConverter_cpp_cppflags)  $(src)TypeConverter.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(TypeConverter_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)TypeConverter.cpp

$(bin)$(binobj)TypeConverter.o : $(TypeConverter_cpp_dependencies)
	$(cpp_echo) $(src)TypeConverter.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(TypeConverter_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(TypeConverter_cppflags) $(TypeConverter_cpp_cppflags)  $(src)TypeConverter.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)OperationWithQuery.d

$(bin)$(binobj)OperationWithQuery.d :

$(bin)$(binobj)OperationWithQuery.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)OperationWithQuery.o : $(src)OperationWithQuery.cpp
	$(cpp_echo) $(src)OperationWithQuery.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(OperationWithQuery_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(OperationWithQuery_cppflags) $(OperationWithQuery_cpp_cppflags)  $(src)OperationWithQuery.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(OperationWithQuery_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)OperationWithQuery.cpp

$(bin)$(binobj)OperationWithQuery.o : $(OperationWithQuery_cpp_dependencies)
	$(cpp_echo) $(src)OperationWithQuery.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(OperationWithQuery_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(OperationWithQuery_cppflags) $(OperationWithQuery_cpp_cppflags)  $(src)OperationWithQuery.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PrivilegeManager.d

$(bin)$(binobj)PrivilegeManager.d :

$(bin)$(binobj)PrivilegeManager.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)PrivilegeManager.o : $(src)PrivilegeManager.cpp
	$(cpp_echo) $(src)PrivilegeManager.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(PrivilegeManager_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(PrivilegeManager_cppflags) $(PrivilegeManager_cpp_cppflags)  $(src)PrivilegeManager.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(PrivilegeManager_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)PrivilegeManager.cpp

$(bin)$(binobj)PrivilegeManager.o : $(PrivilegeManager_cpp_dependencies)
	$(cpp_echo) $(src)PrivilegeManager.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(PrivilegeManager_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(PrivilegeManager_cppflags) $(PrivilegeManager_cpp_cppflags)  $(src)PrivilegeManager.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)ViewFactory.d

$(bin)$(binobj)ViewFactory.d :

$(bin)$(binobj)ViewFactory.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)ViewFactory.o : $(src)ViewFactory.cpp
	$(cpp_echo) $(src)ViewFactory.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(ViewFactory_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(ViewFactory_cppflags) $(ViewFactory_cpp_cppflags)  $(src)ViewFactory.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(ViewFactory_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)ViewFactory.cpp

$(bin)$(binobj)ViewFactory.o : $(ViewFactory_cpp_dependencies)
	$(cpp_echo) $(src)ViewFactory.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(ViewFactory_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(ViewFactory_cppflags) $(ViewFactory_cpp_cppflags)  $(src)ViewFactory.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)BulkOperation.d

$(bin)$(binobj)BulkOperation.d :

$(bin)$(binobj)BulkOperation.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)BulkOperation.o : $(src)BulkOperation.cpp
	$(cpp_echo) $(src)BulkOperation.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(BulkOperation_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(BulkOperation_cppflags) $(BulkOperation_cpp_cppflags)  $(src)BulkOperation.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(BulkOperation_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)BulkOperation.cpp

$(bin)$(binobj)BulkOperation.o : $(BulkOperation_cpp_dependencies)
	$(cpp_echo) $(src)BulkOperation.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(BulkOperation_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(BulkOperation_cppflags) $(BulkOperation_cpp_cppflags)  $(src)BulkOperation.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)Connection.d

$(bin)$(binobj)Connection.d :

$(bin)$(binobj)Connection.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)Connection.o : $(src)Connection.cpp
	$(cpp_echo) $(src)Connection.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Connection_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Connection_cppflags) $(Connection_cpp_cppflags)  $(src)Connection.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(Connection_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)Connection.cpp

$(bin)$(binobj)Connection.o : $(Connection_cpp_dependencies)
	$(cpp_echo) $(src)Connection.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Connection_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Connection_cppflags) $(Connection_cpp_cppflags)  $(src)Connection.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)DomainPropertyNames.d

$(bin)$(binobj)DomainPropertyNames.d :

$(bin)$(binobj)DomainPropertyNames.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)DomainPropertyNames.o : $(src)DomainPropertyNames.cpp
	$(cpp_echo) $(src)DomainPropertyNames.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(DomainPropertyNames_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(DomainPropertyNames_cppflags) $(DomainPropertyNames_cpp_cppflags)  $(src)DomainPropertyNames.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(DomainPropertyNames_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)DomainPropertyNames.cpp

$(bin)$(binobj)DomainPropertyNames.o : $(DomainPropertyNames_cpp_dependencies)
	$(cpp_echo) $(src)DomainPropertyNames.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(DomainPropertyNames_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(DomainPropertyNames_cppflags) $(DomainPropertyNames_cpp_cppflags)  $(src)DomainPropertyNames.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)DataEditor.d

$(bin)$(binobj)DataEditor.d :

$(bin)$(binobj)DataEditor.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)DataEditor.o : $(src)DataEditor.cpp
	$(cpp_echo) $(src)DataEditor.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(DataEditor_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(DataEditor_cppflags) $(DataEditor_cpp_cppflags)  $(src)DataEditor.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(DataEditor_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)DataEditor.cpp

$(bin)$(binobj)DataEditor.o : $(DataEditor_cpp_dependencies)
	$(cpp_echo) $(src)DataEditor.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(DataEditor_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(DataEditor_cppflags) $(DataEditor_cpp_cppflags)  $(src)DataEditor.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)BulkOperationWithQuery.d

$(bin)$(binobj)BulkOperationWithQuery.d :

$(bin)$(binobj)BulkOperationWithQuery.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)BulkOperationWithQuery.o : $(src)BulkOperationWithQuery.cpp
	$(cpp_echo) $(src)BulkOperationWithQuery.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(BulkOperationWithQuery_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(BulkOperationWithQuery_cppflags) $(BulkOperationWithQuery_cpp_cppflags)  $(src)BulkOperationWithQuery.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(BulkOperationWithQuery_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)BulkOperationWithQuery.cpp

$(bin)$(binobj)BulkOperationWithQuery.o : $(BulkOperationWithQuery_cpp_dependencies)
	$(cpp_echo) $(src)BulkOperationWithQuery.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(BulkOperationWithQuery_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(BulkOperationWithQuery_cppflags) $(BulkOperationWithQuery_cpp_cppflags)  $(src)BulkOperationWithQuery.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)OracleStatement.d

$(bin)$(binobj)OracleStatement.d :

$(bin)$(binobj)OracleStatement.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)OracleStatement.o : $(src)OracleStatement.cpp
	$(cpp_echo) $(src)OracleStatement.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(OracleStatement_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(OracleStatement_cppflags) $(OracleStatement_cpp_cppflags)  $(src)OracleStatement.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(OracleStatement_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)OracleStatement.cpp

$(bin)$(binobj)OracleStatement.o : $(OracleStatement_cpp_dependencies)
	$(cpp_echo) $(src)OracleStatement.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(OracleStatement_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(OracleStatement_cppflags) $(OracleStatement_cpp_cppflags)  $(src)OracleStatement.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)DomainProperties.d

$(bin)$(binobj)DomainProperties.d :

$(bin)$(binobj)DomainProperties.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)DomainProperties.o : $(src)DomainProperties.cpp
	$(cpp_echo) $(src)DomainProperties.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(DomainProperties_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(DomainProperties_cppflags) $(DomainProperties_cpp_cppflags)  $(src)DomainProperties.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(DomainProperties_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)DomainProperties.cpp

$(bin)$(binobj)DomainProperties.o : $(DomainProperties_cpp_dependencies)
	$(cpp_echo) $(src)DomainProperties.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(DomainProperties_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(DomainProperties_cppflags) $(DomainProperties_cpp_cppflags)  $(src)DomainProperties.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SessionProperties.d

$(bin)$(binobj)SessionProperties.d :

$(bin)$(binobj)SessionProperties.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)SessionProperties.o : $(src)SessionProperties.cpp
	$(cpp_echo) $(src)SessionProperties.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(SessionProperties_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(SessionProperties_cppflags) $(SessionProperties_cpp_cppflags)  $(src)SessionProperties.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(SessionProperties_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)SessionProperties.cpp

$(bin)$(binobj)SessionProperties.o : $(SessionProperties_cpp_dependencies)
	$(cpp_echo) $(src)SessionProperties.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(SessionProperties_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(SessionProperties_cppflags) $(SessionProperties_cpp_cppflags)  $(src)SessionProperties.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)OracleTableBuilder.d

$(bin)$(binobj)OracleTableBuilder.d :

$(bin)$(binobj)OracleTableBuilder.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)OracleTableBuilder.o : $(src)OracleTableBuilder.cpp
	$(cpp_echo) $(src)OracleTableBuilder.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(OracleTableBuilder_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(OracleTableBuilder_cppflags) $(OracleTableBuilder_cpp_cppflags)  $(src)OracleTableBuilder.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(OracleTableBuilder_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)OracleTableBuilder.cpp

$(bin)$(binobj)OracleTableBuilder.o : $(OracleTableBuilder_cpp_dependencies)
	$(cpp_echo) $(src)OracleTableBuilder.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(OracleTableBuilder_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(OracleTableBuilder_cppflags) $(OracleTableBuilder_cpp_cppflags)  $(src)OracleTableBuilder.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)Domain.d

$(bin)$(binobj)Domain.d :

$(bin)$(binobj)Domain.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)Domain.o : $(src)Domain.cpp
	$(cpp_echo) $(src)Domain.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Domain_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Domain_cppflags) $(Domain_cpp_cppflags)  $(src)Domain.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(Domain_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)Domain.cpp

$(bin)$(binobj)Domain.o : $(Domain_cpp_dependencies)
	$(cpp_echo) $(src)Domain.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(Domain_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(Domain_cppflags) $(Domain_cpp_cppflags)  $(src)Domain.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),lcg_OracleAccessclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)BindVariableHolder.d

$(bin)$(binobj)BindVariableHolder.d :

$(bin)$(binobj)BindVariableHolder.o : $(cmt_final_setup_lcg_OracleAccess)

$(bin)$(binobj)BindVariableHolder.o : $(src)BindVariableHolder.cpp
	$(cpp_echo) $(src)BindVariableHolder.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(BindVariableHolder_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(BindVariableHolder_cppflags) $(BindVariableHolder_cpp_cppflags)  $(src)BindVariableHolder.cpp
endif
endif

else
$(bin)lcg_OracleAccess_dependencies.make : $(BindVariableHolder_cpp_dependencies)

$(bin)lcg_OracleAccess_dependencies.make : $(src)BindVariableHolder.cpp

$(bin)$(binobj)BindVariableHolder.o : $(BindVariableHolder_cpp_dependencies)
	$(cpp_echo) $(src)BindVariableHolder.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(lcg_OracleAccess_pp_cppflags) $(lib_lcg_OracleAccess_pp_cppflags) $(BindVariableHolder_pp_cppflags) $(use_cppflags) $(lcg_OracleAccess_cppflags) $(lib_lcg_OracleAccess_cppflags) $(BindVariableHolder_cppflags) $(BindVariableHolder_cpp_cppflags)  $(src)BindVariableHolder.cpp

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: lcg_OracleAccessclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(lcg_OracleAccess.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

lcg_OracleAccessclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library lcg_OracleAccess
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)lcg_OracleAccess$(library_suffix).a $(library_prefix)lcg_OracleAccess$(library_suffix).$(shlibsuffix) lcg_OracleAccess.stamp lcg_OracleAccess.shstamp
#-- end of cleanup_library ---------------