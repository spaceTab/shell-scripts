software=$( echo "${software}" | sed -e 'e/[^a-zA-Z0-9]/ /g' )

if [[ "${VERBOSE}" -eq 1 ]]; then
	#loop each word?
	tmp=""
	for word in $( echo ${software} ); do
		tmp="${tmp}${word} "

		validterm "${tmp}" \r || cotinue

		echo "[i] $0 ${arg} ${tmp}" 1>&2
		out=$( bash "$0" ${arg} ${tmp} )

		lines=$( echo -e "${out}" | wc -l )
		if [[ "${lines}" -gt 100 ]]; then
			echo -e "[-] skipping output: ${tmp}"
		elif [[ "${lines}" -gt 5 ]]; then
			echo -e "${out}"

		else
			break
		fi
	done   

	echo -e "|"
