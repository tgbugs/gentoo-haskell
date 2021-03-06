# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="computes interest for a given account"
HOMEPAGE="https://github.com/peti/hledger-interest"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/cabal:=
	dev-haskell/data-default:=
	dev-haskell/decimal:=
	>dev-haskell/hledger-lib-1:=
	dev-haskell/mtl:=
	dev-haskell/text:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

PATCHES=(
	"${FILESDIR}"/${P}-hledger-1.9.patch
)