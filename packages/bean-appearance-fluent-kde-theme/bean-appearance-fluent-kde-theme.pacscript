pkgname="bean-appearance-fluent-kde-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Fluent Kde Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/vinceliuice/Fluent-kde/archive/refs/heads/main.tar.gz")
url="https://github.com/samwhelp/deb-coffee/tree/main/packages/bean-appearance-fluent-kde-theme"
depends=()
pacdeps=()
replace=()




util_copy_from_srcfile_to_desfile () {

	local src_file_path="${1}"
	local des_file_path="${2}"


	echo
	echo cp -f "${src_file_path}" "${des_file_path}"
	cp -f "${src_file_path}" "${des_file_path}"


	echo

	return 0

}


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


	echo rm -rf "${des_dir_path}/look-and-feel/backgrounds"
	rm -rf "${des_dir_path}/look-and-feel/backgrounds"


	echo rm -f "${des_dir_path}/look-and-feel/backgrounds-blur.svg"
	rm -f "${des_dir_path}/look-and-feel/backgrounds-blur.svg"


	echo rm -f "${des_dir_path}/look-and-feel/render-wallpapers.sh"
	rm -f "${des_dir_path}/look-and-feel/render-wallpapers.sh"


	echo rm -f "${des_dir_path}/look-and-feel/Fluent-lnf.svg"
	rm -f "${des_dir_path}/look-and-feel/Fluent-lnf.svg"


	echo rm -f "${des_dir_path}/look-and-feel/render-lnf.sh"
	rm -f "${des_dir_path}/look-and-feel/render-lnf.sh"




	return 0
}

mod_theme_install_sddm_theme () {

	local src_dir_path="${prjdir}/sddm"
	local des_dir_path="${pkgdir}/usr/share/sddm/themes"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"




	util_copy_from_srcfile_to_desfile "${src_dir_path}/backgrounds/background.png" "${des_dir_path}/Fluent/background.png"




	echo
	echo rm -rf "${des_dir_path}/backgrounds"
	rm -rf "${des_dir_path}/backgrounds"

	echo
	echo rm -f "${des_dir_path}/install.sh"
	rm -f "${des_dir_path}/install.sh"

	echo
	echo rm -f "${des_dir_path}/README.md"
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

	prjdir="${srcdir}/Fluent-kde-main"


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
