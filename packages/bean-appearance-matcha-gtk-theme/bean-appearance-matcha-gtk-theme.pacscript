pkgname="bean-appearance-matcha-gtk-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Matcha Gtk Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/vinceliuice/Matcha-gtk-theme/archive/refs/heads/master.tar.gz")
url="https://github.com/samwhelp/deb-coffee/tree/main/packages/bean-appearance-matcha-gtk-theme"
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
	echo cd "Matcha-gtk-theme-master"
	cd "Matcha-gtk-theme-master"

	local themes_dir_path="${pkgdir}/usr/share/themes"


	echo
	echo mkdir -p "${themes_dir_path}"
	mkdir -p "${themes_dir_path}"


	echo
	echo ./install.sh -d "${themes_dir_path}"
	./install.sh -d "${themes_dir_path}"


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
