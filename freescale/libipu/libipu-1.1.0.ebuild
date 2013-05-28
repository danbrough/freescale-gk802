#
#
#

EAPI="5"

inherit eutils

DESCRIPTION="libipu library"
HOMEPAGE="https://github.com/danbrough/freescale-gk802/wiki"
SRC_URI="http://repository.timesys.com/buildsources/i/imx-lib/imx-lib-1.1.0/imx-lib-1.1.0.tar.gz"

# need to get user to accept the license ? .. where does the license go?
LICENSE="freescale"
SLOT="0"

KEYWORDS="arm ~arm"
IUSE="static-libs"

S=${WORKDIR}/imx-lib-${PV}/ipu/

src_compile(){
	emake PLATFORM=IMX6Q INCLUDE=-I/usr/src/linux/include
}

src_install() {
	emake DEST_DIR="${D}" install || die
	use static-libs || find "${D}" -name '*.a' -exec rm -f {} +
}

