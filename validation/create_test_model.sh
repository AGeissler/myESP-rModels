#!/bin/sh
# this runs a sequence of scripts that builds a model from command
# line directive. Useful for testing that code changes do not impact
# functionality. Use:  create_test_model.sh path_to_esp-r_binaries.
VERSION=$1
echo "  "
echo "Registering test_box..."
echo "  "
./test_box_register.sh $VERSION
echo "  "
echo "  "
echo "Setting up model databases..."
echo "  "
sleep 5
./test_box_dbmanage.sh $VERSION
echo "  "
echo "  "
echo "Adding glazing to MLC database..."
echo "  "
sleep 5
./test_box_dbmadd_sg.sh $VERSION
echo "  "
echo "  "
echo "Adding partitions to database..."
echo "  "
sleep 5
./test_box_dbmadd_ptn.sh $VERSION
echo "  "
echo "  "
echo "Creating and attributing a zone..."
echo "  "
sleep 5
./test_box_create_zone.sh $VERSION
echo "  "
echo "  "
echo "You can now work with the model in test_box/cfg/test_box_a.cfg"
