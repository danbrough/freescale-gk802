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

COLLISIONS="
usr/include/GLES2/gl2ext.h
usr/include/GLES2/gl2platform.h
usr/include/GLES2/gl2.h
usr/include/KHR/khrplatform.h
usr/include/GLES/gl.h
usr/include/GLES/glplatform.h
usr/include/GLES/egl.h
usr/include/GLES/glext.h
usr/lib/libGLESv1_CM.so
usr/lib/libGLESv2.so
usr/lib/libEGL.so
"


src_compile(){
	einfo "Doing stuff here in compile at `pwd` "	
	cd gpu-viv-bin-mx6q-1.1.0-ts/softfp
	mkdir -p $OPENGLDIR/usr/include
	mkdir -p $OPENGLDIR/usr/lib
	mv usr/include/* $OPENGLDIR/usr/include/
	mv usr/lib/* $OPENGLDIR/usr/lib/
	#mkdir -p $OPENGLDIR/usr/include/GLES
	#mkdir -p $OPENGLDIR/usr/include/GLES2
	#mkdir -p $OPENGLDIR/usr/include/KHR
	#mkdir -p $OPENGLDIR/usr/lib
	#for FILE in $COLLISIONS; do 
	#	echo mv $FILE $OPENGLDIR/$FILE
	#done
	cd $OPENGLDIR/usr/lib
	ln -sf libGL.so.1.2 libGL.so.1
	ln -sf libGL.so.1.2 libGL.so
	edie
}

src_install(){
	einfo "Installing stuff. Am at `pwd`"
	/bin/ls -al 
	cd gpu-viv-bin-mx6q-1.1.0-ts
	cd softfp
	einfo contents of `pwd`
	ls -al
	einfo DESTDIR: $DESTDIR D: $D
	mv * $D
}
