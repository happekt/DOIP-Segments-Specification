!#/bin/bash

for file in ../doip-response-segments/*.json; do
	echo "Processing" $file
	tmp1=${file%.json}
	name=${tmp1##*Op.}
	classname=${name%-Response}
	filename=${classname}_response.py
	datamodel-codegen \
		--input $file \
		--input-file-type jsonschema \
		--output $filename \
		--class-name $classname 
done

for file in ../doip-request-segments/*.json; do
	echo "Processing" $file
	tmp1=${file%.json}
	name=${tmp1##*Op.}
	classname=${name%-Request}
	filename=${classname}_request.py
	datamodel-codegen \
		--input $file \
		--input-file-type jsonschema \
		--output $filename \
		--class-name $classname 
done

