title="test"
category=English
tag="solid,angular"
youtube=https://www.youtube.com/c/knowthen/playlists
cover=https://yt3.ggpht.com/ytc/AKedOLSe-TwhFIz-7mcPZmsUpU2W8RF9HvLjOpNozGGCew=s88-c-k-c0x00ffffff-no-rj

fileName="${title// /_}"
cp content/template.md content/$fileName.md
sed -i "s/{title}/$title/"  content/$fileName.md 
sed -i "s/{category}/$category/"  content/$fileName.md 
sed -i "s/{date}/$(date +'%Y-%m-%d')/" content/$fileName.md
sed -i "s/{tag}/$tag/"  content/$fileName.md 
sed -i "s~{youtube}~$youtube~g" content/$fileName.md 
sed -i "s~{cover}~$cover~g" content/$fileName.md 