# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Testing utilities for the validity library"
HOMEPAGE="https://github.com/NorfairKing/validity#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/quickcheck-2.8:2=[profile?]
	>=dev-haskell/validity-0.3:=[profile?] <dev-haskell/validity-0.4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/hspec )
"

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck     >= 2.8 && < 2.9' 'QuickCheck     >= 2.8' \
		'QuickCheck         >= 2.8 && < 2.10' 'QuickCheck         >= 2.8'
}
