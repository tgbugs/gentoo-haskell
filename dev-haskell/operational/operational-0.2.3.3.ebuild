# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Implementation of difficult monads made easy with operational semantics"
HOMEPAGE="http://wiki.haskell.org/Operational"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+buildexamples"

RDEPEND=">=dev-haskell/mtl-1.1:=[profile?] <dev-haskell/mtl-2.4.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	buildexamples? ( >=dev-haskell/random-1:=[profile?] <dev-haskell/random-2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildexamples buildexamples)
}