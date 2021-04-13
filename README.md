
# Introduction

The repository contains Personal block lists for various services for Pi-hole. The links to the static and generated txt files are added to gravity block list via ansible.

# Scripts
From the excellent firebog website, it is possible to create a huge block list by merging fromvarious sources. This is done via the script create_list.sh in the scripts folder, which creates the files firebog*.txt. The github actions file takes care of auto-updating these files on a schedule. Combined with gravity updates
on schedule in pi-hole, we now have a mechanism to update block lists from index files without having to do much programming inside the pi-hole. 
