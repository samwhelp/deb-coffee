pkgname="bean-appearance-qogir-gtk-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Qogir Gtk Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/vinceliuice/Qogir-theme/archive/refs/heads/master.tar.gz")
url="https://github.com/samwhelp/deb-coffee/tree/main/packages/bean-appearance-qogir-gtk-theme"
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
	echo cd "Qogir-theme-master"
	cd "Qogir-theme-master"

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
