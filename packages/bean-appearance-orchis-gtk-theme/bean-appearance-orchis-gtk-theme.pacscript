pkgname="bean-appearance-orchis-gtk-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Orchis Gtk Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/vinceliuice/Orchis-theme/archive/refs/heads/master.tar.gz")
url="https://github.com/samwhelp/deb-coffee/tree/main/packages/bean-appearance-orchis-gtk-theme"
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
	echo cd "Orchis-theme-master"
	cd "Orchis-theme-master"

	local themes_dir_path="${pkgdir}/usr/share/themes"


	echo
	echo mkdir -p "${themes_dir_path}"
	mkdir -p "${themes_dir_path}"


	echo
	echo ./install.sh -t all -d "${themes_dir_path}"
	./install.sh -t all -d "${themes_dir_path}"


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
