pkgname="bean-appearance-qogir-kde-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Qogir Kde Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/vinceliuice/Qogir-kde/archive/refs/heads/master.tar.gz")
url="https://github.com/samwhelp/deb-coffee/tree/main/packages/bean-appearance-qogir-kde-theme"
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

	local src_dir_path="${prjdir}/aurorae/themes"
	local des_dir_path="${pkgdir}/usr/share/aurorae/themes"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


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




	echo rm -rf "${pkgdir}/usr/share/plasma/plasmoids"
	rm -rf "${pkgdir}/usr/share/plasma/plasmoids"




	return 0
}

mod_theme_install_sddm_theme () {

	local src_dir_path="${prjdir}/sddm"
	local des_dir_path="${pkgdir}/usr/share/sddm/themes"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	rm -f "${des_dir_path}/Qogir/theme.conf.user"


	rm -f "${des_dir_path}/install.sh"
	rm -f "${des_dir_path}/README.md"


	return 0
}

mod_theme_install_wallpaper () {

	local src_dir_path="${prjdir}/wallpaper"
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

	prjdir="${srcdir}/Qogir-kde-master"


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
