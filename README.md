mkdir -p ~/landing
cd ~/landing
touch Dockerfile
touch index.html
touch styles.css

cd ~/landing
docker build -t landing
docker run -d -p 8080:80 --name landing -v ~/landing:/usr/share/nginx/html landing

docker rm -f landing
docker run -d -p 80:80 --name landing -v ~/landing:/usr/share/nginx/html landing
