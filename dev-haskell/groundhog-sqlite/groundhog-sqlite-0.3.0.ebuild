# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Sqlite3 backend for the groundhog library"
HOMEPAGE="http://hackage.haskell.org/package/groundhog-sqlite"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="systemlib"

RDEPEND=">=dev-haskell/groundhog-0.3.0:=[profile?]
		<dev-haskell/groundhog-0.4.0:=[profile?]
		=dev-haskell/monad-control-0.3*:=[profile?]
		>=dev-haskell/resource-pool-0.2.1:=[profile?]
		<dev-haskell/resource-pool-0.3:=[profile?]
		>=dev-haskell/text-0.8:=[profile?]
		<dev-haskell/text-0.12:=[profile?]
		>=dev-haskell/transformers-0.2.1:=[profile?]
		<dev-haskell/transformers-0.4:=[profile?]
		dev-haskell/unordered-containers:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		systemlib? ( >=dev-db/sqlite-3.0
		)"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag systemlib systemlib)
}
