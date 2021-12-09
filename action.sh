branch=main
git clone -b $branch https://github.com/Zylern/TGVid-Comp /root/Zylern
cp ultroid/.env /root/Zylern/.env
cd /root/Zylern
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
