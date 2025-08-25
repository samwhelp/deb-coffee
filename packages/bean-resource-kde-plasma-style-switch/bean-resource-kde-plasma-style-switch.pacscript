pkgname="bean-resource-kde-plasma-style-switch"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Kde Plasma / style-config-switch"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/samwhelp/kde-plasma-style-switch/archive/refs/heads/main.tar.gz")
url="https://github.com/samwhelp/deb-coffee/tree/main/packages/bean-resource-kde-plasma-style-switch"
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




mode_kde_plasma_install_style_switch () {

	local src_dir_path="${prjdir}/main"
	local des_dir_path="${pkgdir}/usr/share/kde-plasma-style-switch"

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

	prjdir="${srcdir}/kde-plasma-style-switch-main"


	echo
	echo mkdir -p "${prjdir}"
	mkdir -p "${prjdir}"


	echo
	echo mkdir -p "${pkgdir}"
	mkdir -p "${pkgdir}"




	mode_kde_plasma_install_style_switch





	echo
	echo "##"
	echo "## ## Done"
	echo "##"
	echo


	return 0
}
