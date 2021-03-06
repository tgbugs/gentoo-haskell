# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell API bindings for http://themoviedb.org"
HOMEPAGE="https://github.com/pjones/themoviedb"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="maintainer"

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?]
	>=dev-haskell/http-client-0.4.31:=[profile?] <dev-haskell/http-client-0.6:=[profile?]
	>=dev-haskell/http-client-tls-0.2.2:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/text-binary-0.1:=[profile?] <dev-haskell/text-binary-0.3:=[profile?]
	>=dev-haskell/time-locale-compat-0.1:=[profile?] <dev-haskell/time-locale-compat-0.2:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/tasty-0.10
		>=dev-haskell/tasty-hunit-0.9 )
"

src_prepare() {
	default

	cabal_chdeps \
		'aeson              >= 0.6    && < 1.4' 'aeson              >= 0.6' \
		'tasty       >= 0.10 && < 1.1' 'tasty       >= 0.10' \
		'tasty-hunit >= 0.9  && < 0.11' 'tasty-hunit >= 0.9'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag maintainer maintainer)
}
