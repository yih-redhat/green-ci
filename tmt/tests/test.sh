#!/bin/bash
set -euox pipefail

cd ../../tests || exit 1

function run_tests() {
	if [ "$TEST_CASE" = "greenboot-bootc-qcow2" ]; then
		./greenboot-bootc-qcow2.sh
	elif [ "$TEST_CASE" = "greenboot-bootc-anaconda-iso" ]; then
		./greenboot-bootc-anaconda-iso.sh
	elif [ "$TEST_CASE" = "greenboot-ostree-qcow2" ]; then
		./greenboot-ostree-anaconda-iso.sh
	elif [ "$TEST_CASE" = "greenboot-ostree-anaconda-iso" ]; then
		./greenboot-ostree-anaconda-iso.sh
	else
		echo "Error: Test case $TEST_CASE not found!"
		exit 1
	fi
}

run_tests
exit 0
