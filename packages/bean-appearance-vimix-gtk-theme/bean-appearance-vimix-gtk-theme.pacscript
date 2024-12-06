pkgname="bean-appearance-vimix-gtk-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.0.1"
pkgdesc="Vimix-gtk-themes"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/vinceliuice/Vimix-gtk-themes/archive/refs/heads/master.tar.gz")
url="https://github.com/samwhelp/deb-coffee/tree/main/packages/bean-appearance-vimix-gtk-theme"
depends=()
pacdeps=()
replace=()




util_index_theme_inherits_set () {

	local value="${1}"
	local index_theme_file_path="${2}"
	sed -i "s|^Inherits=.*|Inherits=${value}|g" "${index_theme_file_path}"

	return 0
}




package () {

	echo
	echo "##"
	echo "## ## Call package"
	echo "##"
	echo

	#pwd

	echo
	echo cd "${_archive}"
	cd "${_archive}"

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
