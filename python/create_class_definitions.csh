!#/bin/bash

for filename in ../doip-response-segments/*.json; do
	echo "Processing" $filename
	tmp=${filename%.json}.py
	fname=${tmp##*/}
	classname=${fname%-Response.py}
	cname=${classname##*Op.}
	datamodel-codegen \
		--input $filename \
		--input-file-type jsonschema \
		--output $fname \
		--class-name $cname 
done


for filename in ../doip-request-segments/*.json; do
	echo "Processing" $filename
	tmp=${filename%.json}.py
	fname=${tmp##*/}
	classname=${fname%-Request.py}
	cname=${classname##*Op.}
	datamodel-codegen \
		--input $filename \
		--input-file-type jsonschema \
		--output $fname \
		--class-name $cname 
done

