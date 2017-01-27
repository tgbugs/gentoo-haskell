# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="Treemap visualiser for GHC prof files"
HOMEPAGE="https://github.com/jaspervdj/profiteur"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6:= <dev-haskell/aeson-1.1:=
	>=dev-haskell/attoparsec-0.10:= <dev-haskell/attoparsec-0.14:=
	>=dev-haskell/js-jquery-3.1:= <dev-haskell/js-jquery-3.2:=
	>=dev-haskell/text-0.11:= <dev-haskell/text-1.3:=
	>=dev-haskell/unordered-containers-0.2:= <dev-haskell/unordered-containers-0.3:=
	>=dev-haskell/vector-0.10:= <dev-haskell/vector-0.12:=
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"