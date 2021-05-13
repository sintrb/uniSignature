tag="sin-signature"
src="/Users/robin/DO/VUE/test"
dst="/Users/robin/Downloads"

pwd=`pwd`
echo "to $dst"
cd "$dst"
echo "plugin $tag"
rm -rf "$tag.zip"
rm -rf "$tag"
mkdir "$tag"
cp -r "$src/components" "./$tag/"
cd "$tag"
find . | grep .git | xargs rm -rf
find . | grep .DS_Store | xargs rm -rf
# cd ..
# zip -r "$tag.zip" "./$tag"
zip -r "$tag.zip" "./components"
mv "$tag.zip" ../
cd ..

dtag="$tag-demo"
echo "demo $dtag"
rm -rf "$dtag.zip"
rm -rf "$dtag"
cp -r "$src" "./$dtag"
cd "$dtag"
rm -rf unpackage
find . | grep .git | xargs rm -rf
find . | grep .DS_Store | xargs rm -rf
find . | grep .hbuilderx | xargs rm -rf
rm -f zpub.sh
sed -i "" 's/"appid".*/"appid": "",/' manifest.json
cd ..
zip -r "$dtag.zip" "./$dtag"
cd "$src"