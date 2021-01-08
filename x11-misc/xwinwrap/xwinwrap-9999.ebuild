EAPI=7
 
DESCRIPTION="A build of xwinwrap"
HOMEPAGE=""
EGIT_REPO_URI="https://github.com/WeirdFish09/xwinwrap"
inherit git-r3
 
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
 
#S="${WORKDIR}/xwinwrap-${P}"

DEPEND=">=x11-libs/libX11-1.0.3
	>=x11-libs/libXrender-0.9.10-r1
	>=x11-libs/libXext-1.3.4
	>=x11-base/xorg-server-1.20.7"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dodir "/usr/bin"
	emake DESTDIR="${D}/usr/bin" install
}
