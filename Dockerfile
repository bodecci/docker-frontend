# create a node project
FROM node   

# in this directory 
WORKDIR /client   

# and then copy the package.json file to this dir
COPY package*.json /client   

# run npm install
RUN npm install    

# then copy the entire content to the dir
COPY . /client   

# expose port 300
EXPOSE 3000        
# then run the project. all this happens in a container
CMD [ "npm", "start" ]  