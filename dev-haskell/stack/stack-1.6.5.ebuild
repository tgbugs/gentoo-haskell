# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999
#hackport: flags: -disable-git-info,-hide-dependency-versions,-integration-tests,-static,-supported-build

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="The Haskell Tool Stack"
HOMEPAGE="http://haskellstack.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
# No KEYWORDS as it depends on cabal 2 and some masked deps
#KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # installs packages from network

# These are the lower bound of the dependencies from -r1:
# https://hackage.haskell.org/package/stack-1.6.5/revision/1.cabal
# Where we don't need to change anything in the .cabal file, as the original
# cabal file in the package only has constraints on base.

RDEPEND=">=dev-haskell/annotated-wl-pprint-0.7.0:=[profile?]
	>=dev-haskell/ansi-terminal-0.7.1.1:=[profile?]
	>=dev-haskell/async-2.1.1.1:=[profile?]
	>=dev-haskell/base64-bytestring-1.0.0.1:=[profile?]
	>=dev-haskell/bindings-uname-0.1:=[profile?]
	>=dev-haskell/blaze-builder-0.4.0.2:=[profile?]
	>=dev-haskell/clock-0.7.2:=[profile?]
	>=dev-haskell/cryptonite-conduit-0.2.2:=[profile?]
	>=dev-haskell/echo-0.1.3:=[profile?]
	>=dev-haskell/exceptions-0.8.3:=[profile?]
	>=dev-haskell/filelock-0.1.1.2:=[profile?]
	>=dev-haskell/fsnotify-0.2.1.1:=[profile?]
	dev-haskell/gitrev:=[profile?]
	>=dev-haskell/hackage-security-0.5.2.2:=[profile?]
	>=dev-haskell/hashable-1.2.6.1:=[profile?]
	>=dev-haskell/hastache-0.6.1:=[profile?]
	>=dev-haskell/http-types-0.9.1:=[profile?]
	>=dev-haskell/mintty-0.1.1:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?]
	>=dev-haskell/neat-interpolation-0.3.2.1:=[profile?]
	>=dev-haskell/network-uri-2.6.1.0:=[profile?]
	>=dev-haskell/open-browser-0.2.1.0:=[profile?]
	dev-haskell/optparse-simple:=[profile?]
	>=dev-haskell/path-0.6.1:=[profile?]
	>=dev-haskell/path-io-1.3.3:=[profile?]
	>=dev-haskell/pid1-0.1.2.0:=[profile?]
	>=dev-haskell/regex-applicative-text-0.1.0.1:=[profile?]
	>=dev-haskell/store-0.4.3.2:=[profile?]
	>=dev-haskell/store-core-0.4.1:=[profile?]
	>=dev-haskell/tar-0.5.0.3:=[profile?]
	>=dev-haskell/temporary-1.2.1.1:=[profile?]
	>=dev-haskell/text-metrics-0.3.0:=[profile?]
	>=dev-haskell/th-reify-many-0.1.8:=[profile?]
	>=dev-haskell/unicode-transforms-0.3.3:=[profile?]
	>=dev-haskell/vector-0.12.0.1:=[profile?]
	>=dev-haskell/zlib-0.6.1.2:=[profile?]
	>=dev-lang/ghc-8.0.2:=
	>=dev-haskell/aeson-1.1.2.0:=[profile?]
	>=dev-haskell/attoparsec-0.13.1.0:=[profile?]
	>=dev-haskell/cabal-2.0.1.0:=[profile?]
	>=dev-haskell/conduit-1.2.12.1:=[profile?]
	>=dev-haskell/conduit-extra-1.1.17:=[profile?]
	>=dev-haskell/cryptonite-0.23:=[profile?]
	>=dev-haskell/extra-1.6:=[profile?]
	>=dev-haskell/fast-logger-2.4.10:=[profile?]
	>=dev-haskell/file-embed-0.0.10:=[profile?]
	>=dev-haskell/generic-deriving-1.11.2:=[profile?]
	>=dev-haskell/hpack-0.20.0:=[profile?]
	>=dev-haskell/http-client-0.5.7.1:=[profile?]
	>=dev-haskell/http-client-tls-0.3.5.1:=[profile?]
	>=dev-haskell/http-conduit-2.2.3.2:=[profile?]
	>=dev-haskell/memory-0.14.8:=[profile?]
	>=dev-haskell/microlens-0.4.8.1:=[profile?]
	>=dev-haskell/microlens-mtl-0.1.11.0:=[profile?]
	>=dev-haskell/monad-logger-0.3.25.1:=[profile?]
	>=dev-haskell/mono-traversable-1.0.4.0:=[profile?]
	>=dev-haskell/optparse-applicative-0.13.2.0:=[profile?]
	>=dev-haskell/persistent-2.7.1:=[profile?]
	>=dev-haskell/persistent-sqlite-2.6.3:=[profile?]
	>=dev-haskell/persistent-template-2.5.3:=[profile?]
	>=dev-haskell/primitive-0.6.2.0:=[profile?]
	>=dev-haskell/project-template-0.2.0:=[profile?]
	>=dev-haskell/resourcet-1.1.9:=[profile?]
	>=dev-haskell/retry-0.7.4.3:=[profile?]
	>=dev-haskell/semigroups-0.18.3:=[profile?]
	>=dev-haskell/split-0.2.3.2:=[profile?]
	>=dev-haskell/stm-2.4.4.1:=[profile?]
	>=dev-haskell/streaming-commons-0.1.17:=[profile?]
	>=dev-haskell/text-1.2.2.2:=[profile?]
	>=dev-haskell/tls-1.3.11:=[profile?]
	>=dev-haskell/unix-compat-0.4.3.1:=[profile?]
	>=dev-haskell/unliftio-0.2.1.0:=[profile?]
	>=dev-haskell/unordered-containers-0.2.8.0:=[profile?]
	>=dev-haskell/yaml-0.8.25:=[profile?]
	>=dev-haskell/zip-archive-0.3.1.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.2.0
	test? ( >=dev-haskell/hspec-2.4.4
		>=dev-haskell/quickcheck-2.9.2
		>=dev-haskell/smallcheck-1.1.3 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-disable-git-info \
		--flag=-hide-dependency-versions \
		--flag=-integration-tests \
		--flag=-static \
		--flag=-supported-build
}
