mkdir -p ~/landing-page
cd ~/landing-page

cd ~/landing-page
docker build -t landing-page .
docker run -d -p 8080:80 --name my-landing-page -v ~/landing-page:/usr/share/nginx/html landing-page

docker rm -f my-landing-page
docker run -d -p 8080:80 --name my-landing-page -v ~/landing-page:/usr/share/nginx/html landing-page
