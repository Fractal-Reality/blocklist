#!/bin/bash

# Destination file and it's temp
DEST=firebog_list.txt
DEST_TMP="${DEST}.tmp"

# Index URL
index_url="https://v.firebog.net/hosts/lists.php?type=tick"

# First we clean up DEST_TMP
rm -rf ${DEST_TMP}

# Then weget the full list from the index URL
url_list=`curl ${index_url} 2>/dev/null`

# And add these URLs into the temp list
for url in ${url_list}; do 
  curl ${url} 2>/dev/null 1>> ${DEST_TMP}
done

# Then replace with DEST
cp ${DEST_TMP} ${DEST}
rm -rf ${DEST_TMP}
