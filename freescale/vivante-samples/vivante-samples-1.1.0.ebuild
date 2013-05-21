#
#
#

EAPI="5"

inherit eutils


DESCRIPTION="Binary vivante examples"
HOMEPAGE="http://homepage_to_some_wiki_about_this_stuff"
#SRC_URI="http://download.ossystems.com.br/bsp/freescale/source/gpu-viv-bin-mx6q-1.1.0.bin"
SRC_URI="http://repository.timesys.com/buildsources/g/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q-1.1.0/gpu-viv-bin-mx6q-1.1.0.tar.gz"

# need to get user to accept the license ? .. where does the license go?
LICENSE="freescale"

SLOT="0"

KEYWORDS="arm ~arm"

S=${WORKDIR}/gpu-viv-bin-mx6q-1.1.0

src_compile(){
	rm -rf usr
}

src_install(){
	mv * $D
}

