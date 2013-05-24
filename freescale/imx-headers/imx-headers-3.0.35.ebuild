#
#
#

EAPI="5"

inherit eutils
ETYPE="headers"

DESCRIPTION="libfpu library"
HOMEPAGE="https://github.com/danbrough/freescale-gk802/wiki"
SRC_URI="http://pathto/imx-headers-3.0.35.tar.bz2"

# need to get user to accept the license ? .. where does the license go?
LICENSE="freescale"
SLOT="0"

KEYWORDS="arm ~arm"
S=${WORKDIR}


src_install() {
	mkdir -p $D/usr/include
	mv * $D/usr/include/
}

