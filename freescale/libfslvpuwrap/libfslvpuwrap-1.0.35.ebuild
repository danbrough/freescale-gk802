#
#
#

EAPI="5"

inherit eutils

DESCRIPTION="fslvpuwrap library"
HOMEPAGE="http://homepage_to_some_wiki_about_this_stuff"
#SRC_URI="http://repository.timesys.com/buildsources/l/libfslvpuwrap/libfslvpuwrap-1.0.28/libfslvpuwrap-1.0.36.tar.gz"
SRC_URI="http://download.ossystems.com.br/bsp/freescale/source/libfslvpuwrap-1.0.35.tar.gz"
# need to get user to accept the license ? .. where does the license go?
LICENSE="freescale"
SLOT="0"

KEYWORDS="arm ~arm"

#MERGE_TYPE="binary"

#RESTRICT=""
DEPEND="freescale/libfpu"
#RDEPEND=""
#S=${WORKDIR}


#src_install() {
#        emake DESTDIR="${D}" install || die
#}



