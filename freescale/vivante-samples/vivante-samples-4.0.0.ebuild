#
#
#

EAPI="5"

inherit eutils


DESCRIPTION="Binary vivante examples"
HOMEPAGE="http://homepage_to_some_wiki_about_this_stuff"
SRC_URI="http://dsadsad.com/gpu-viv-bin-mx6q-3.0.35-4.0.0.tar.gz"

# need to get user to accept the license ? .. where does the license go?
LICENSE="freescale"

SLOT="0"

KEYWORDS="arm ~arm"

S=${WORKDIR}/gpu-viv-bin-mx6q-3.0.35-4.0.0/

src_compile(){
	rm -rf usr
}

src_install(){
	mv * $D
}

