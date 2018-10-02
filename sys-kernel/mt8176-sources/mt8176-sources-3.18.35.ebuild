# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

ETYPE="sources"
K_DEFCONFIG="sharkbait_mt8176_defconfig"
K_SECURITY_UNSUPPORTED=1
EXTRAVERSION="-${PN}/-*"
inherit kernel-2
detect_version
detect_arch

inherit git-r3
EGIT_REPO_URI="https://gitlab.com/lramage94/android_kernel_mt8176_common.git -> mt8176-linux.git"
EGIT_BRANCH="sharkbait"
EGIT_CHECKOUT_DIR="${WORKDIR}/linux-${PV}-mt8176"

DESCRIPTION="Mediatek 8176 SoC kernel sources"
HOMEPAGE="https://www.mediatek.com/products/tablets/mt8176"

KEYWORDS="~arm64"

src_unpack() {
	git-r3_src_unpack
	unpack_set_extraversion
}
