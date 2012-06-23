#############################################################################
# Makefile for building: fluid
# Generated by qmake (2.01a) (Qt 4.7.4) on: Sat Jun 23 19:58:43 2012
# Project:  fluid.pro
# Template: app
# Command: /opt/QtSDK/Desktop/Qt/474/gcc/bin/qmake -spec /opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/linux-g++ -o Makefile fluid.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/linux-g++ -I. -I/opt/QtSDK/Desktop/Qt/474/gcc/include/QtCore -I/opt/QtSDK/Desktop/Qt/474/gcc/include/QtGui -I/opt/QtSDK/Desktop/Qt/474/gcc/include -I. -I.
LINK          = g++
LFLAGS        = -Wl,-O1 -Wl,-rpath,/opt/QtSDK/Desktop/Qt/474/gcc/lib
LIBS          = $(SUBLIBS)  -L/opt/QtSDK/Desktop/Qt/474/gcc/lib -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /opt/QtSDK/Desktop/Qt/474/gcc/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		mainwindow.cpp \
		arena.cpp \
		physics.cpp moc_mainwindow.cpp \
		moc_arena.cpp
OBJECTS       = main.o \
		mainwindow.o \
		arena.o \
		physics.o \
		moc_mainwindow.o \
		moc_arena.o
DIST          = /opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/common/g++.conf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/common/unix.conf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/common/linux.conf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/qconfig.pri \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/modules/qt_webkit_version.pri \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_functions.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_config.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/exclusive_builds.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_pre.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/release.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_post.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/warn_on.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/unix/thread.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/moc.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/resources.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/uic.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/yacc.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/lex.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/include_source_dir.prf \
		fluid.pro
QMAKE_TARGET  = fluid
DESTDIR       = 
TARGET        = fluid

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: fluid.pro  /opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/linux-g++/qmake.conf /opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/common/g++.conf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/common/unix.conf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/common/linux.conf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/qconfig.pri \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/modules/qt_webkit_version.pri \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_functions.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_config.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/exclusive_builds.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_pre.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/release.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_post.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/warn_on.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/unix/thread.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/moc.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/resources.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/uic.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/yacc.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/lex.prf \
		/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/include_source_dir.prf
	$(QMAKE) -spec /opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/linux-g++ -o Makefile fluid.pro
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/common/g++.conf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/common/unix.conf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/common/linux.conf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/qconfig.pri:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/modules/qt_webkit_version.pri:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_functions.prf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_config.prf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/exclusive_builds.prf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_pre.prf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/release.prf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_post.prf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/warn_on.prf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt.prf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/unix/thread.prf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/moc.prf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/resources.prf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/uic.prf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/yacc.prf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/lex.prf:
/opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/features/include_source_dir.prf:
qmake:  FORCE
	@$(QMAKE) -spec /opt/QtSDK/Desktop/Qt/474/gcc/mkspecs/linux-g++ -o Makefile fluid.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/fluid1.0.0 || $(MKDIR) .tmp/fluid1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/fluid1.0.0/ && $(COPY_FILE) --parents mainwindow.h arena.h particle.h physics.h .tmp/fluid1.0.0/ && $(COPY_FILE) --parents main.cpp mainwindow.cpp arena.cpp physics.cpp .tmp/fluid1.0.0/ && $(COPY_FILE) --parents mainwindow.ui .tmp/fluid1.0.0/ && (cd `dirname .tmp/fluid1.0.0` && $(TAR) fluid1.0.0.tar fluid1.0.0 && $(COMPRESS) fluid1.0.0.tar) && $(MOVE) `dirname .tmp/fluid1.0.0`/fluid1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/fluid1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_mainwindow.cpp moc_arena.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp moc_arena.cpp
moc_mainwindow.cpp: arena.h \
		particle.h \
		physics.h \
		mainwindow.h
	/opt/QtSDK/Desktop/Qt/474/gcc/bin/moc $(DEFINES) $(INCPATH) mainwindow.h -o moc_mainwindow.cpp

moc_arena.cpp: particle.h \
		physics.h \
		arena.h
	/opt/QtSDK/Desktop/Qt/474/gcc/bin/moc $(DEFINES) $(INCPATH) arena.h -o moc_arena.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h
ui_mainwindow.h: mainwindow.ui
	/opt/QtSDK/Desktop/Qt/474/gcc/bin/uic mainwindow.ui -o ui_mainwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

main.o: main.cpp mainwindow.h \
		arena.h \
		particle.h \
		physics.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		arena.h \
		particle.h \
		physics.h \
		ui_mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

arena.o: arena.cpp arena.h \
		particle.h \
		physics.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o arena.o arena.cpp

physics.o: physics.cpp physics.h \
		particle.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o physics.o physics.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

moc_arena.o: moc_arena.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_arena.o moc_arena.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

