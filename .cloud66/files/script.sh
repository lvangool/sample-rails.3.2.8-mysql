#!/bin/sh
# Detects linux distro

OS=`uname -s`

if [ "${OS}" = "Linux" ] ; then
	if [ -f /etc/redhat-release ] ; then
		DIST='RedHat/CentOS'
	elif [ -f /etc/SuSE-release ] ; then
		DIST="SuSE"
	elif [ -f /etc/mandrake-release ] ; then
		DIST='Mandrake'
	elif [ -f /etc/lsb-release ] ; then
		DIST="Ubuntu"
	elif [ -f /etc/debian_version ] ; then
		DIST="Debian"
	elif [ -f /etc/UnitedLinux-release ] ; then
		DIST="UnitedLinux"
	elif [ -f /etc/system-release ] ; then
		DIST="Amazon"
	fi
fi

echo ${DIST} > distro.txt