#
#
#

EAPI="5"

inherit eutils


DESCRIPTION="Freescale codec library"
HOMEPAGE="http://homepage_to_some_wiki_about_this_stuff"
SRC_URI="http://repository.timesys.com/buildsources/f/fsl-mm-codeclib/fsl-mm-codeclib-2.0.8/fsl-mm-codeclib-2.0.8.tar.gz"

# need to get user to accept the license ? .. where does the license go?
LICENSE="freescale"

SLOT="0"

KEYWORDS="arm ~arm"


#RESTRICT=""
#DEPEND=""
#RDEPEND=""
S=${WORKDIR}

#src_unpack(){
#	einfo "src_unpack here at `pwd`"
#	sh ../distdir/gpu-viv-bin-mx6q-1.1.0.bin --auto-accept
#}

src_install(){
	einfo "Doing stuff here in compile at `pwd` "
	mkdir -p  $D/usr	
	mv fsl-mm-codeclib-2.0.8/release/lib $D/usr/
}

