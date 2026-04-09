FROM node 

COPY package.json package.json    # whatever we are writing in this file will run in the image/container 
COPY package-lock.json package-lock.json   # copying file from here to image 
COPY main.js main.js   # we can give any name to destination file, but not a ood practive to change the name

RUN npm install     # install all deps

ENTRYPOINT [ "node", "main.js"]     # run 'node main.js' whenever someone run this image or container


