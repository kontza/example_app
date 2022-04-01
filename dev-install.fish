pip3 install --upgrade build
pip3 uninstall (awk 'BEGIN{FS="="}/^ *name/{gsub(/ /, "", $2);print $2}' setup.cfg)
rm dist/*.whl
python3 -m build
pip3 install dist/*.whl
