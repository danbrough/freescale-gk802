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
DESCRIPTION="Misc configuration files for the gk802"

HOMEPAGE="http://link_to_some_wiki"

SLOT="0"

KEYWORDS="arm ~arm"

DEPEND=""
RDEPEND="${DEPEND}"

S=${FILESDIR}

src_install(){
	cp -av * $D	
	cd $D
	chown root:root -R .
}
