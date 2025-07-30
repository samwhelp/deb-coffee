pkgname="bean-appearance-greystone-icon-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="GreyStone Icon Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/SethStormR/GreyStone/archive/refs/heads/main.tar.gz")
url="https://github.com/samwhelp/deb-coffee/tree/main/packages/bean-appearance-greystone-icon-theme"
depends=()
pacdeps=()
replace=()




package () {

	echo
	echo "##"
	echo "## ## Call package"
	echo "##"
	echo

	#pwd

	#echo
	#echo cd "${_archive}"
	#cd "${_archive}"

	echo
	echo cd "GreyStone-main"
	cd "GreyStone-main"

	local icons_dir_path="${pkgdir}/usr/share/icons"


	echo
	echo mkdir -p "${icons_dir_path}"
	mkdir -p "${icons_dir_path}"


	echo
	echo tar xf GreyStone.tar.xz
	tar xf GreyStone.tar.xz


	echo
	echo cp -rfT "GreyStone" "${icons_dir_path}/GreyStone"
	cp -rfT "GreyStone" "${icons_dir_path}/GreyStone"


	echo
	echo gtk-update-icon-cache -f "${icons_dir_path}/GreyStone"
	gtk-update-icon-cache -f "${icons_dir_path}/GreyStone"


	echo
	echo cd "${OLDPWD}"
	cd "${OLDPWD}"
	echo




	echo
	echo "##"
	echo "## ## Done"
	echo "##"
	echo


	return 0
}
