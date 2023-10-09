docker stop cruna-cc
docker rm cruna-cc

docker run --name cruna-cc \
  -p 8642 \
  --restart unless-stopped \
  -e VIRTUAL_HOST=cruna.cc,www.cruna.cc \
  -e LETSENCRYPT_HOST=cruna.cc,www.cruna.cc \
  -e LETSENCRYPT_EMAIL=cruna@sameteam.co \
  -v `pwd`/html:/usr/share/nginx/html:ro -d nginx
