#!/bin/bash
# 
# @desc 	Deletes all trashy camera files recursively (with _thm. in their names or ending in .THM)
# @package 	Caja File Manager
# @install 	Place this script in ~/.config/caja/scripts/. (name can be "Delete Xiaomi Yi Crap" or whatever \wo extension, just chmod +x it)
# @usage 	select folder(s) → right click → Scripts → Delete Xiaomi Yi Crap
# @since 	2017-08-29
# @author 	Allan Laal <allan.laal@gmail.com>
# @url		https://gist.github.com/allanlaal/0e60847670d3d321567ae45f398c7e3d

notify-send 'Deleting trashy *thm* camera files from selected folder(s)' -u critical

echo "$CAJA_SCRIPT_SELECTED_FILE_PATHS" | while read folder
do
	find "$folder" -type f -name "*\_thm\.*" -delete
	find "$folder" -type f -name "*\.THM" -delete
done

notify-send 'Deleted all *thm* files from selected folder(s)' -u critical
exit 0
