pkgname="bean-appearance-colloid-kde-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Colloid Kde Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/vinceliuice/Colloid-kde/archive/refs/heads/main.tar.gz")
url="https://github.com/samwhelp/deb-coffee/tree/main/packages/bean-appearance-colloid-kde-theme"
depends=()
pacdeps=()
replace=()




util_copy_from_srcdir_to_desdir () {

	local src_dir_path="${1}"
	local des_dir_path="${2}"


	echo
	echo mkdir -p "${src_dir_path}"
	mkdir -p "${src_dir_path}"


	echo
	echo mkdir -p "${des_dir_path}"
	mkdir -p "${des_dir_path}"


	echo
	echo cp -rfT "${src_dir_path}" "${des_dir_path}"
	cp -rfT "${src_dir_path}" "${des_dir_path}"


	echo

	return 0

}




mod_theme_install_aurorae_theme () {

	local src_dir_path="${prjdir}/aurorae"
	local des_dir_path="${pkgdir}/usr/share/aurorae/themes"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"




	echo cp -rfT "${src_dir_path}/common" "${des_dir_path}/Colloid-dark"
	cp -rfT "${src_dir_path}/common" "${des_dir_path}/Colloid-dark"


	echo cp -rfT "${src_dir_path}/common" "${des_dir_path}/Colloid-light"
	cp -rfT "${src_dir_path}/common" "${des_dir_path}/Colloid-light"




	echo cp -rfT "${src_dir_path}/common" "${des_dir_path}/Colloid-dark-round"
	cp -rfT "${src_dir_path}/common" "${des_dir_path}/Colloid-dark-round"


	echo cp -rfT "${src_dir_path}/common" "${des_dir_path}/Colloid-light-round"
	cp -rfT "${src_dir_path}/common" "${des_dir_path}/Colloid-light-round"




	echo cp -rfT "${src_dir_path}/common-nord" "${des_dir_path}/Colloid-dark-nord"
	cp -rfT "${src_dir_path}/common-nord" "${des_dir_path}/Colloid-dark-nord"


	echo cp -rfT "${src_dir_path}/common-nord" "${des_dir_path}/Colloid-light-nord"
	cp -rfT "${src_dir_path}/common-nord" "${des_dir_path}/Colloid-light-nord"




	echo cp -rfT "${src_dir_path}/common-nord" "${des_dir_path}/Colloid-dark-round-nord"
	cp -rfT "${src_dir_path}/common-nord" "${des_dir_path}/Colloid-dark-round-nord"


	echo cp -rfT "${src_dir_path}/common-nord" "${des_dir_path}/Colloid-light-round-nord"
	cp -rfT "${src_dir_path}/common-nord" "${des_dir_path}/Colloid-light-round-nord"




	echo rm -rf "${des_dir_path}/common"
	rm -rf "${des_dir_path}/common"


	echo rm -rf "${des_dir_path}/common-nord"
	rm -rf "${des_dir_path}/common-nord"




	return 0
}

mod_theme_install_color_schemes () {

	local src_dir_path="${prjdir}/color-schemes"
	local des_dir_path="${pkgdir}/usr/share/color-schemes"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	return 0
}

mod_theme_install_kvantum_theme () {

	local src_dir_path="${prjdir}/Kvantum"
	local des_dir_path="${pkgdir}/usr/share/Kvantum"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	return 0
}

mod_theme_install_plasma_theme () {

	local src_dir_path="${prjdir}/plasma"
	local des_dir_path="${pkgdir}/usr/share/plasma"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"




	echo rm -rf "${des_dir_path}/plasmoids"
	rm -rf "${des_dir_path}/plasmoids"


	echo rm -rf "${des_dir_path}/desktoptheme/icons"
	rm -rf "${des_dir_path}/desktoptheme/icons"




	return 0
}

mod_theme_install_sddm_theme () {

	local src_dir_path="${prjdir}/sddm/6.0"
	local des_dir_path="${pkgdir}/usr/share/sddm/themes"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"




	echo
	echo rm -f "${des_dir_path}/Colloid/theme.conf.user"
	rm -f "${des_dir_path}/Colloid/theme.conf.user"


	echo
	echo cp -f "${src_dir_path}/images/Colloid-dark.png" "${des_dir_path}/Colloid/background.png"
	cp -f "${src_dir_path}/images/Colloid-dark.png" "${des_dir_path}/Colloid/background.png"


	echo
	echo cp -f "${src_dir_path}/images/Preview-dark.png" "${des_dir_path}/Colloid/Preview.png"
	cp -f "${src_dir_path}/images/Preview-dark.png" "${des_dir_path}/Colloid/Preview.png"


	echo
	echo rm -rf "${des_dir_path}/images"
	rm -rf "${des_dir_path}/images"


	echo
	echo rm -f "${des_dir_path}/install.sh"
	rm -f "${des_dir_path}/install.sh"


	echo
	echo rm -f "${des_dir_path}/README.md"
	rm -f "${des_dir_path}/README.md"




	return 0
}

mod_theme_install_wallpaper () {

	local src_dir_path="${prjdir}/wallpapers"
	local des_dir_path="${pkgdir}/usr/share/wallpapers"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	return 0
}







package () {

	echo
	echo "##"
	echo "## ## Call package"
	echo "##"
	echo

	#pwd


	#pkgdir="${pkgdir}"

	#prjdir="${_archive}"

	prjdir="${srcdir}/Colloid-kde-main"


	echo
	echo mkdir -p "${prjdir}"
	mkdir -p "${prjdir}"


	echo
	echo mkdir -p "${pkgdir}"
	mkdir -p "${pkgdir}"




	mod_theme_install_aurorae_theme
	mod_theme_install_color_schemes
	mod_theme_install_kvantum_theme
	mod_theme_install_plasma_theme
	mod_theme_install_sddm_theme
	mod_theme_install_wallpaper




	echo
	echo "##"
	echo "## ## Done"
	echo "##"
	echo


	return 0
}
