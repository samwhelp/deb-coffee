pkgname="bean-appearance-citrus-icon-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Citrus-icon-theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/yeyushengfan258/Citrus-icon-theme/archive/refs/heads/master.tar.gz")
url="https://github.com/samwhelp/deb-coffee/tree/main/packages/bean-appearance-citrus-icon-theme"
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

	#echo
	#echo cd "${_archive}"
	#cd "${_archive}"

	echo
	echo cd "Citrus-icon-theme-master"
	cd "Citrus-icon-theme-master"

	local icons_dir_path="${pkgdir}/usr/share/icons"

	echo
	echo mkdir -p "${icons_dir_path}"
	mkdir -p "${icons_dir_path}"

	echo
	echo ./install.sh -red -d "${icons_dir_path}"
	./install.sh -red -d "${icons_dir_path}"


	echo
	echo cd "${OLDPWD}"
	cd "${OLDPWD}"
	echo




	local inherits_light="Numix-Circle-Light,Numix-Light,Papirus-Light,Adwaita,hicolor"
	local inherits_dark="Numix-Circle,Numix,Papirus-Dark,Adwaita,hicolor"

	echo
	echo util_index_theme_inherits_set "${inherits_light}" "${icons_dir_path}/Citrus-red/index.theme"
	echo
	util_index_theme_inherits_set "${inherits_light}" "${icons_dir_path}/Citrus-red/index.theme"


	echo
	echo util_index_theme_inherits_set "${inherits_dark}" "${icons_dir_path}/Citrus-red-dark/index.theme"
	echo
	util_index_theme_inherits_set "${inherits_dark}" "${icons_dir_path}/Citrus-red-dark/index.theme"




	echo
	echo "##"
	echo "## ## Done"
	echo "##"
	echo


	return 0
}
