#!/bin/bash

OUTPUT=$1

aws s3api get-object --bucket spacenet-dataset --key manifest.txt --request-payer requester $OUTPUT/manifest.txt

for i in $(cat manifest.txt | grep 'processedData.*\..*') ; do \
  mkdir -p $(dirname $i) && \
  echo Getting $i && \
  aws s3api get-object --bucket spacenet-dataset --key ${i/\.\//} --request-payer requester \
    $OUTFILE/$i ;\
done

