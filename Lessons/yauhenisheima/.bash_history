explorer.exe .
cd ~
explorer.exe .
exit
cd ~
pwd
cd ~
ls
cd frontend/
ls
docker build -f Dockerfile.dev -t yauhenisheima:frontend
docker build -f Dockerfile.dev -t yauhenisheima:frontend .
docker run -it -p 3000:3000 -v /app/node_modules -v ~/frontend:/app yauhenisheima:frontend
docker run -it -p 3000:3000 -v /home/node/app/node_modules -v ~/frontend:/app yauhenisheima:frontend
docker build -f Dockerfile.dev -t yauhenisheima:frontend .
Bdocker run -it -p 3000:3000 -v /home/node/app/node_modules -v ~/frontend:/app yauhenisheima:frontend
exit
