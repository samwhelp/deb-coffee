pkgname="bean-appearance-questx-icon-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="QuestX Icon Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/samwhelp/questx-icon-theme/archive/refs/heads/port.tar.gz")
url="https://github.com/samwhelp/deb-coffee/tree/main/packages/bean-appearance-questx-icon-theme"
depends=()
pacdeps=()
replace=()


##
## source=("https://github.com/SethStormR/QuestX/archive/refs/heads/main.tar.gz")
##


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
	echo cd "questx-icon-theme-port"
	cd "questx-icon-theme-port"

	local icons_dir_path="${pkgdir}/usr/share/icons"


	echo
	echo mkdir -p "${icons_dir_path}"
	mkdir -p "${icons_dir_path}"




	##
	## ## color / Blue
	##

	#echo
	#echo tar xf QuestX-Blue.tar.xz
	#tar xf QuestX-Blue.tar.xz


	#echo
	#echo cp -rfT "QuestX-Blue" "${icons_dir_path}/QuestX-Blue"
	#cp -rfT "QuestX-Blue" "${icons_dir_path}/QuestX-Blue"


	#echo
	#echo gtk-update-icon-cache -f "${icons_dir_path}/QuestX-Blue"
	#gtk-update-icon-cache -f "${icons_dir_path}/QuestX-Blue"




	##
	## ## color / each
	##

	each_iconpack_install_by_color "Blue"
	each_iconpack_install_by_color "Green"
	each_iconpack_install_by_color "Orange"
	each_iconpack_install_by_color "Purple"
	each_iconpack_install_by_color "Red"
	each_iconpack_install_by_color "Teal"




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

each_iconpack_install_by_color () {

	local the_color="${1}"

	local the_iconpack_name="QuestX-${the_color}"

	local icons_dir_path="${pkgdir}/usr/share/icons"


	##
	## ## color / Blue
	##

	echo
	echo tar xf ${the_iconpack_name}.tar.xz
	tar xf ${the_iconpack_name}.tar.xz


	echo
	echo cp -rfT "${the_iconpack_name}" "${icons_dir_path}/${the_iconpack_name}"
	cp -rfT "${the_iconpack_name}" "${icons_dir_path}/${the_iconpack_name}"


	echo
	echo gtk-update-icon-cache -f "${icons_dir_path}/${the_iconpack_name}"
	gtk-update-icon-cache -f "${icons_dir_path}/${the_iconpack_name}"


}
