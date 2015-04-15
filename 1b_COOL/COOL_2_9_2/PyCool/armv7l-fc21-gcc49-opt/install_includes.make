#-- start of make_header -----------------

#====================================
#  Document install_includes
#
#   Generated Wed Apr 15 17:01:47 2015  by jwsmith
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_includes_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_includes_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_includes

PyCool_tag = $(tag)

#cmt_local_tagfile_install_includes = $(PyCool_tag)_install_includes.make
cmt_local_tagfile_install_includes = $(bin)$(PyCool_tag)_install_includes.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PyCool_tag = $(tag)

#cmt_local_tagfile_install_includes = $(PyCool_tag).make
cmt_local_tagfile_install_includes = $(bin)$(PyCool_tag).make

endif

include $(cmt_local_tagfile_install_includes)
#-include $(cmt_local_tagfile_install_includes)

ifdef cmt_install_includes_has_target_tag

cmt_final_setup_install_includes = $(bin)setup_install_includes.make
cmt_dependencies_in_install_includes = $(bin)dependencies_install_includes.in
#cmt_final_setup_install_includes = $(bin)PyCool_install_includessetup.make
cmt_local_install_includes_makefile = $(bin)install_includes.make

else

cmt_final_setup_install_includes = $(bin)setup.make
cmt_dependencies_in_install_includes = $(bin)dependencies.in
#cmt_final_setup_install_includes = $(bin)PyCoolsetup.make
cmt_local_install_includes_makefile = $(bin)install_includes.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PyCoolsetup.make

#install_includes :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_includes'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_includes/
#install_includes::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of install_includes_header ------

#
#  We want to install all header files that follow the standard convention
#
#    ../<package>
#
#  This document generator needs no parameterization, since it simply expects
#  the standard convention.
#

installarea = ${CMTINSTALLAREA}
install_include_dir = $(installarea)/$(tag)/include

install_includes :: install_includesinstall

install :: install_includesinstall

install_includesinstall :: $(install_include_dir)
	@if test ! "$(installarea)" = ""; then\
	  echo "installation done"; \
	fi

$(install_include_dir) ::
	@if test "$(installarea)" = ""; then \
	  echo "Cannot install header files, no installation directory specified"; \
	else \
	  if test -d ../${package}; then \
	    echo "Installing files from standard ../${package} to $(install_include_dir)"; \
	    if test ! -d $(install_include_dir) ; then mkdir -p $(install_include_dir); fi; \
	    if test ! -L $(install_include_dir)/$(package); then \
	      (cd ../${package}; \
	       here=`/bin/pwd`; \
               eval '(cd ..; tar cf - ${package} | (cd $(install_include_dir)/ ; tar xf - ) ) '; \
	       /bin/rm -f $(install_include_dir)/$(package).cmtref; \
               echo $${here} >$(install_include_dir)/$(package).cmtref); \
            fi; \
	  else \
	    echo "No standard include file area"; \
	  fi; \
	fi

##install_includesclean :: install_includesuninstall

uninstall :: install_includesuninstall

install_includesuninstall ::
	@if test "$(installarea)" = ""; then \
	  echo "Cannot uninstall header files, no installation directory specified"; \
	else \
	  if test -d $(install_include_dir)/$(package) ; then \
	    echo "Uninstalling files from $(install_include_dir)/$(package)"; \
	    eval rm -Rf $(install_include_dir)/$(package) ; \
	  elif test -L $(install_include_dir)/$(package) ; then \
	    echo "Uninstalling files from $(install_include_dir)/$(package)"; \
	    eval rm -f $(install_include_dir)/$(package) ; \
	  fi ; \
	  if test -f $(install_include_dir)/$(package).cmtref ; then \
	    echo "Uninstalling files from $(install_include_dir)/$(package).cmtref"; \
	    eval rm -f $(install_include_dir)/$(package).cmtref ; \
	  fi; \
	fi


#-- end of install_includes_header ------
#-- start of cleanup_header --------------

clean :: install_includesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_includes.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_includesclean ::
#-- end of cleanup_header ---------------
