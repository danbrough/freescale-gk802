#
#
#

EAPI="5"

inherit eutils


DESCRIPTION="Binary vivante gpu files"
HOMEPAGE="http://homepage_to_some_wiki_about_this_stuff"
#SRC_URI="http://download.ossystems.com.br/bsp/freescale/source/gpu-viv-bin-mx6q-1.1.0.bin"
SRC_URI="http://repository.timesys.com/buildsources/g/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q-1.1.0/gpu-viv-bin-mx6q-1.1.0.tar.gz"

# need to get user to accept the license ? .. where does the license go?
LICENSE="freescale"

SLOT="0"

KEYWORDS="arm ~arm"

#MERGE_TYPE="binary"

#RESTRICT=""
#DEPEND=""
#RDEPEND=""
S=${WORKDIR}
OPENGLDIR=usr/lib/opengl/vivante

src_compile(){
	cd gpu-viv-bin-mx6q-1.1.0
	#rm -rf opt
	mkdir -p $OPENGLDIR/include
	mkdir -p $OPENGLDIR/lib
	cd usr/lib
	rm libOpenVG_3D.so
	ln -s libOpenVG.so libOpenVG_3D.so
	cd ../../	
	mv usr/include/CL $OPENGLDIR/include/
	mv usr/include/EGL $OPENGLDIR/include/
	mv usr/include/GL $OPENGLDIR/include/
	mv usr/include/GLES $OPENGLDIR/include/
	mv usr/include/GLES2 $OPENGLDIR/include/
	mv usr/lib/libEGL*  $OPENGLDIR/lib/
	mv usr/lib/libGL*  $OPENGLDIR/lib/
	mv usr/lib/libOpenVG.so  $OPENGLDIR/lib/
	cd $OPENGLDIR/lib
	ln -sf libGL.so.1.2 libGL.so.1
	ln -sf libGL.so.1.2 libGL.so
}

src_install(){
	cd gpu-viv-bin-mx6q-1.1.0
	mv * $D
}
