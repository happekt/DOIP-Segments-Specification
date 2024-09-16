!#/bin/bash

for filename in ../doip-response-segments/*.json; do
	echo "Processing" $filename
	tmp=${filename%.json}.py
	name=${tmp##*/}
	datamodel-codegen  --input $filename --input-file-type jsonschema --output $name
done

for filename in ../doip-request-segments/*.json; do
	echo "Processing" $filename
	tmp=${filename%.json}.py
	name=${tmp##*/}
	datamodel-codegen  --input $filename --input-file-type jsonschema --output $name
done

