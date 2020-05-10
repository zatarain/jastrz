.POSIX:

MAINUSER = ulises
EC2_USER = ec2-user
SKLFILES = . -type f -not -name Makefile -not -name Jailfile -not -name freebsd-ami -not -name . | sed -E 's@^./@@'

.SILENT: task-list deployment

task-list:
	# Manual steps.
	echo "Install git (pkg install git)."
	echo "Checkout repository (git checkout https://github.com/zatarain/jastrz.git -b freebsd-defaults)."
	echo "Enter to directory and generate task list (make -C jastrz task-list)."
	echo "Deploy default set up (make -C jastrz deployment)."
	# Replacing skeleton.
	echo "# Change shell to /bin/sh"
	pkg install -y nano py37-iocage-1.2_5
	find ${SKLFILES} | xargs -Ipath \
	echo "# Copy" path "->" /path
	echo "# Enable run permission for user/bin/history-run script."
	echo "# Create history links directory /usr/bin/history."
	echo "# Generate symbolic links for history commands (/usr/bin/history/!# -> ../history-run)."
	echo "# Enable run permission for all the generated history links."
	# Adding main user and removing default one.
	echo "# Add user ulises."
	echo "# Copy public key for user ulises."
	echo "# Change owner for all inside ulises' home directory."
	echo "# Delete ec2-user."

deployment:
	# Replacing skeleton.
	chsh -s /bin/sh
	find ${SKLFILES} | xargs -Ipath \
	cp -v path /path
	chmod +x /usr/bin/history-run
	mkdir -p /usr/bin/history
	chmod -R 777 /usr/bin/history
	# Adding main user and removing default one
	pw useradd ${MAINUSER} -m -s /bin/sh -G wheel
	cp -rvp ~${EC2_USER}/.ssh ~${MAINUSER}/.ssh
	chown -R ${MAINUSER}:${MAINUSER} ~${MAINUSER}
	pw userdel ${EC2_USER} -r
