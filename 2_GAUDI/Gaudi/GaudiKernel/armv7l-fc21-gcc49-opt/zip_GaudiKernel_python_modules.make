#-- start of make_header -----------------

#====================================
#  Document zip_GaudiKernel_python_modules
#
#   Generated Mon Feb 16 19:31:57 2015  by jwsmith
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_zip_GaudiKernel_python_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_zip_GaudiKernel_python_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_zip_GaudiKernel_python_modules

GaudiKernel_tag = $(tag)

#cmt_local_tagfile_zip_GaudiKernel_python_modules = $(GaudiKernel_tag)_zip_GaudiKernel_python_modules.make
cmt_local_tagfile_zip_GaudiKernel_python_modules = $(bin)$(GaudiKernel_tag)_zip_GaudiKernel_python_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

GaudiKernel_tag = $(tag)

#cmt_local_tagfile_zip_GaudiKernel_python_modules = $(GaudiKernel_tag).make
cmt_local_tagfile_zip_GaudiKernel_python_modules = $(bin)$(GaudiKernel_tag).make

endif

include $(cmt_local_tagfile_zip_GaudiKernel_python_modules)
#-include $(cmt_local_tagfile_zip_GaudiKernel_python_modules)

ifdef cmt_zip_GaudiKernel_python_modules_has_target_tag

cmt_final_setup_zip_GaudiKernel_python_modules = $(bin)setup_zip_GaudiKernel_python_modules.make
cmt_dependencies_in_zip_GaudiKernel_python_modules = $(bin)dependencies_zip_GaudiKernel_python_modules.in
#cmt_final_setup_zip_GaudiKernel_python_modules = $(bin)GaudiKernel_zip_GaudiKernel_python_modulessetup.make
cmt_local_zip_GaudiKernel_python_modules_makefile = $(bin)zip_GaudiKernel_python_modules.make

else

cmt_final_setup_zip_GaudiKernel_python_modules = $(bin)setup.make
cmt_dependencies_in_zip_GaudiKernel_python_modules = $(bin)dependencies.in
#cmt_final_setup_zip_GaudiKernel_python_modules = $(bin)GaudiKernelsetup.make
cmt_local_zip_GaudiKernel_python_modules_makefile = $(bin)zip_GaudiKernel_python_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)GaudiKernelsetup.make

#zip_GaudiKernel_python_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'zip_GaudiKernel_python_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = zip_GaudiKernel_python_modules/
#zip_GaudiKernel_python_modules::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# ============= call_command_header:begin =============
deps        = $(zip_GaudiKernel_python_modules_deps)
command     = $(zip_GaudiKernel_python_modules_command)
output      = $(zip_GaudiKernel_python_modules_output)

.PHONY: zip_GaudiKernel_python_modules zip_GaudiKernel_python_modulesclean

zip_GaudiKernel_python_modules :: $(output)

zip_GaudiKernel_python_modulesclean ::
	$(cmt_uninstallarea_command) $(output)

$(output):: $(deps)
	$(command)

FORCE:
# ============= call_command_header:end =============
#-- start of cleanup_header --------------

clean :: zip_GaudiKernel_python_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(zip_GaudiKernel_python_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

zip_GaudiKernel_python_modulesclean ::
#-- end of cleanup_header ---------------