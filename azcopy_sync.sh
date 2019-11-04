#!/bin/bash

for value in city cityscape crowdhuman widerface widerped
do
	echo azcopy \
	--source https://pubdatasets.blob.core.windows.net/$value/ \
	--destination https://vigeast.blob.core.windows.net/chunzhao/input/datasets/$value/ \
	--source-sas "?sv=2019-02-02&ss=b&srt=sco&sp=rl&se=2019-11-06T02:56:06Z&st=2019-10-29T17:56:06Z&spr=https&sig=WCP4FsPeSbGeNaG1gcAvf611KA7Ul2KebjvHMiAf2%2Fk%3D" \
	--dest-sas "?st=2019-10-29T17%3A50%3A42Z&se=2021-10-30T17%3A50%3A00Z&sp=racwl&sv=2018-03-28&sr=c&sig=DfybiREb5Tb9BlKAsc%2Fsh%2F6RKYweGxdYlZoxksYNHi8%3D" \
	--recursive \
	--sync-copy
	
	azcopy \
	--source https://pubdatasets.blob.core.windows.net/$value/ \
	--destination https://vigeast.blob.core.windows.net/chunzhao/input/datasets/$value/ \
	--source-sas "?sv=2019-02-02&ss=b&srt=sco&sp=rl&se=2019-11-06T02:56:06Z&st=2019-10-29T17:56:06Z&spr=https&sig=WCP4FsPeSbGeNaG1gcAvf611KA7Ul2KebjvHMiAf2%2Fk%3D" \
	--dest-sas "?st=2019-10-29T17%3A50%3A42Z&se=2021-10-30T17%3A50%3A00Z&sp=racwl&sv=2018-03-28&sr=c&sig=DfybiREb5Tb9BlKAsc%2Fsh%2F6RKYweGxdYlZoxksYNHi8%3D" \
	--recursive \
	--sync-copy

done
