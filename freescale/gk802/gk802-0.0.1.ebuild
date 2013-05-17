#
#
#

EAPI=5

inherit eutils

# A well-used example of an eclass function that needs eutils is epatch. If
# your source needs patches applied, it's suggested to put your patch in the
# 'files' directory and use:
#
#   epatch "${FILESDIR}"/patch-name-here
#
# eclasses tend to list descriptions of how to use their functions properly.
# take a look at /usr/portage/eclass/ for more examples.

# Short one-line description of this package.
DESCRIPTION="Misc example configuration files for the gk802"

HOMEPAGE="https://github.com/danbrough/freescale-gk802/wiki"

SLOT="0"

KEYWORDS="arm ~arm"

S=${FILESDIR}

src_install(){
	mkdir -p ${D}/etc/gk802
	cp -a *  ${D}/etc/gk802/
	chown root:root -R ${D}/etc/gk802/
	einfo ""
	einfo "Example configuration files have been installed in /etc/gk802."
	einfo "You should customize them and copy them to the appropriate directory."
	einfo ""
}
