#!/usr/bin/env zsh

TARFILE=emergency.tgz
SECRET=""
SECRETFILE=tmpSecret$$
ENCODEDFILE=secret_encoded
DECRYPTSH=decrypt.sh

rm -f ${TARFILE} ${SECRETFILE} ${ENCODEDFILE} ${DECRYPTSH}

getSecret() {
	echo -n "Enter the secret: "
	read SECRET
	echo ${SECRET} >$SECRETFILE
}

getSecret

dd if=/dev/random bs=1024 count=100 | hexdump >>$SECRETFILE

scrypt enc -v -m 0.5 -t 30 ${SECRETFILE} ${ENCODEDFILE}

if [ -f ${TARFILE} ]; then
	rm ${TARFILE}
fi

cat - >${DECRYPTSH} <<EOF
#!/usr/bin/env zsh

SECRETFILE=tmpSecret$$

scrypt dec -v -m 0.5 -t 30 ${ENCODEDFILE} \${SECRETFILE}

head -1 \${SECRETFILE}

rm -f \${SECRETFILE}

EOF

chmod +x ${DECRYPTSH}
tar czf ${TARFILE} ${ENCODEDFILE} ${DECRYPTSH}

rm -f ${SECRETFILE} ${ENCODEDFILE} ${DECRYPTSH}
