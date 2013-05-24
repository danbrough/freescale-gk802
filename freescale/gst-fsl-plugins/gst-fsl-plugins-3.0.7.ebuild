#
#
#

EAPI="5"

inherit eutils


DESCRIPTION=""
HOMEPAGE="http://homepage_to_some_wiki_about_this_stuff"
#SRC_URI="http://repository.timesys.com/buildsources/g/gst-fsl-plugin/gst-fsl-plugin-3.0.5/gst-fsl-plugins-3.0.5.tar.gz"
SRC_URI="http://download.ossystems.com.br/bsp/freescale/source/gst-fsl-plugins-3.0.7.tar.gz"

# need to get user to accept the license ? .. where does the license go?
LICENSE="freescale"

SLOT="0"

KEYWORDS="arm ~arm"

#MERGE_TYPE="binary"

DEPEND=">=freescale/libfslvpuwrap-1.0.35 
	freescale/libfslcodec
	freescale/libfslparser"


src_prepare(){
	epatch "${FILESDIR}"/systypes_include.patch 
}

src_configure(){
	econf PLATFORM=MX6
}