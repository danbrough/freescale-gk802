#
#
#

EAPI="5"

inherit eutils


DESCRIPTION=""
HOMEPAGE="http://homepage_to_some_wiki_about_this_stuff"
SRC_URI="http://repository.timesys.com/buildsources/l/libfslcodec/libfslcodec-3.0.5/libfslcodec-3.0.5.tar.gz"
SRC_URI="http://download.ossystems.com.br/bsp/freescale/source/libfslcodec-3.0.7.bin"
# need to get user to accept the license ? .. where does the license go?
LICENSE="freescale"

SLOT="0"

KEYWORDS="arm ~arm"

#MERGE_TYPE="binary"

#RESTRICT=""
#DEPEND=""
#RDEPEND=""

src_unpack(){
	einfo unpacking stuff 
        sh $DISTDIR/libfslcodec-3.0.7.bin	--auto-accept
}


