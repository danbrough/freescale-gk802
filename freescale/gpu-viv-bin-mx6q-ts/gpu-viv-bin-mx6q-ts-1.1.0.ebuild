#
#
#

EAPI="5"

inherit eutils


DESCRIPTION="Binary vivante gpu files"
HOMEPAGE="http://homepage_to_some_wiki_about_this_stuff"
SRC_URI="http://repository.timesys.com/buildsources/g/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q-1.1.0-ts/gpu-viv-bin-mx6q-1.1.0-ts.tar.gz"

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

#src_unpack(){
#	einfo "src_unpack here at `pwd`"
#	sh ../distdir/gpu-viv-bin-mx6q-1.1.0.bin --auto-accept
#}

src_compile(){
	einfo "Doing stuff here in compile at `pwd` "	
	cd gpu-viv-bin-mx6q-1.1.0-ts/softfp/
	mkdir -p $OPENGLDIR/include
	mkdir -p $OPENGLDIR/lib
	#rm -rf usr/lib/directfb-1.4-0
	rm usr/lib/libGAL-dfb.so
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
	#die
}

src_install(){
	einfo "Installing stuff. Am at `pwd`"
	cd gpu-viv-bin-mx6q-1.1.0
	/bin/ls -al 
	einfo contents of `pwd`
	ls -al
	einfo DESTDIR: $DESTDIR D: $D
	mv * $D
}
