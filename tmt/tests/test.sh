#!/bin/bash
set -euox pipefail

cd ../../tests || exit 1

function run_tests() {
	if [ "$TEST_CASE" = "bootc-qcow2" ]; then
		./greenboot-bootc-qcow2.sh
	elif [ "$TEST_CASE" = "bootc-anaconda-iso" ]; then
		./greenboot-bootc-anaconda-iso.sh
	elif [ "$TEST_CASE" = "ostree-qcow2" ]; then
		./greenboot-ostree-anaconda-iso.sh
	elif [ "$TEST_CASE" = "ostree-anaconda-iso" ]; then
		./greenboot-ostree-anaconda-iso.sh
	elif [ "$TEST_CASE" = "bootc-tf" ]; then
		./greenboot-bootc-tf.sh
	else
		echo "Error: Test case $TEST_CASE not found!"
		exit 1
	fi
}

run_tests
exit 0
