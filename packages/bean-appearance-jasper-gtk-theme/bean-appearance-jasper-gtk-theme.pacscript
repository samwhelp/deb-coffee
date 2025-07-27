pkgname="bean-appearance-jasper-gtk-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Jasper Gtk Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/vinceliuice/Jasper-gtk-theme/archive/refs/heads/main.tar.gz")
url="https://github.com/samwhelp/deb-coffee/tree/main/packages/bean-appearance-jasper-gtk-theme"
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
	echo cd "Jasper-gtk-theme-main"
	cd "Jasper-gtk-theme-main"

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
