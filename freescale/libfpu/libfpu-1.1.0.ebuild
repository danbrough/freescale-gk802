#
#
#

EAPI="5"

inherit eutils

DESCRIPTION="libfpu library"
HOMEPAGE="http://homepage_to_some_wiki_about_this_stuff"
SRC_URI="http://repository.timesys.com/buildsources/i/imx-lib/imx-lib-1.1.0/imx-lib-1.1.0.tar.gz"

# need to get user to accept the license ? .. where does the license go?
LICENSE="freescale"
SLOT="0"

KEYWORDS="arm ~arm"

#MERGE_TYPE="binary"

#RESTRICT=""
#DEPEND=""
#RDEPEND=""
S=${WORKDIR}/imx-lib-1.1.0/vpu/

#src_install() {
#        emake DESTDIR="${D}" install || die
#}



src_compile(){
	sed -i -e 's/DEST_DIR/DESTDIR/g' Makefile 
	emake PLATFORM=IMX6Q
}

#src_install(){
#	
#}
