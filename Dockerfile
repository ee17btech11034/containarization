FROM ubuntu    # base image of OS  --> but if node image is present that that will be the best here we only doing for practice
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs     # now we have nodejs image layer over ununtu

COPY package.json package.json    # whatever we are writing in this file will run in the image/container 
COPY package-lock.json package-lock.json   # copying file from here to image 
COPY main.js main.js   # we can give any name to destination file, but not a ood practive to change the name

RUN npm install     # install all deps

ENTRYPOINT [ "node", "main.js"]     # run 'node main.js' whenever someone run this image or container


