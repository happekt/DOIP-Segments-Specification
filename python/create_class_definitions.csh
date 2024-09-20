!#/bin/bash

for file in ../doip-response-segments/*.json; do
	echo "Processing" $file
	tmp1=${file%.json}
	name=${tmp1##*Op.}
	classname=${name%-Response}_response
	filename=${classname}.py
	datamodel-codegen \
		--input $file \
		--input-file-type jsonschema \
		--output $filename \
                --enum-field-as-literal all \
                --disable-timestamp \
                --enable-version-header \
		--class-name $classname 
done

for file in ../doip-request-segments/*.json; do
	echo "Processing" $file
	tmp1=${file%.json}
	name=${tmp1##*Op.}
	classname=${name%-Request}_request
	filename=${classname}.py
	datamodel-codegen \
		--input $file \
		--input-file-type jsonschema \
		--output $filename \
                --enum-field-as-literal all \
                --disable-timestamp \
                --enable-version-header \
		--class-name $classname 
done

