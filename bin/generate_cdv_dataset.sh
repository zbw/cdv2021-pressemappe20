#!/bin/sh
# nbt, 31.8.2018

# requires python3.6+ and modules pyld and requests
#   pip3 install --user pyld
#   pip3 install --user requests

QUERY_DIR=../sparql
DATA_DIR=../data
ENDPOINT=http://zbw.eu/beta/sparql/pm20/query
ZIP=_build/cdv2021_pressemappe20.zip

# extract the turtle data from the endpoint
curl --silent  -X POST -H "Content-type: application/sparql-query" -H "Accept: application/ld+json" \
  --data-binary @$QUERY_DIR/construct_cdv2021_extract.rq $ENDPOINT \
  > $DATA_DIR/pm20_cdv2021.interim.jsonld
  
# shape jsonld with custom frame and context
python3 transform_jsonld.py > $DATA_DIR/pm20_cdv2021.jsonld

# extract examples
cat $DATA_DIR/pm20_cdv2021.jsonld | ./extract_examples.sh > ../examples.jsonld

# combine files in build directory
cd ..
/usr/bin/rm -rf _build
mkdir -p _build
zip -r $ZIP data -x \*~ *.interim.*
zip -r $ZIP LICENSE.txt
zip -r $ZIP README.md
zip -r $ZIP CHANGES.md
zip -r $ZIP examples.jsonld

