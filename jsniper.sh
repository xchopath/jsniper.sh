#!/usr/env/bin bash

TARGET="${1}"

function JavascriptScan() {
	TARGET="${1}"
	JSFILENAME="/tmp/$(shuf -i 100000-999999 | head -1 | md5sum | awk '{print $1".js"}')";
	curl -sk --connect-timeout 10 --max-time 10 "${TARGET}" -o ${JSFILENAME};
	nuclei -silent -t file/js -u ${JSFILENAME}
	nuclei -silent -t file/keys -u ${JSFILENAME}
	nuclei -silent -t file/xss/dom-xss.yaml -u ${JSFILENAME}
	rm ${JSFILENAME}
}

function JavascriptURLRecon() {
	DOMAIN="${1}"
	function URLRecon() {
		DOMAIN="${1}"
		gau ${DOMAIN} 2> /dev/null
		echo "${DOMAIN}" | httpx -silent | katana -silent
	}
	URLRecon "${DOMAIN}" | grep '\.js' | sort -V | uniq
}

for JSLINK in $(JavascriptURLRecon "${TARGET}")
do
	echo "[+] ${JSLINK}"
	JavascriptScan "${JSLINK}"
	echo "------------------------------"
done
