FROM  node:15

WORKDIR /app

COPY package.json .

# RUN npm install  --olny=production
ARG NODE_ENV
RUN IF [ "$NODE_ENV" = "development" ]; \
          then npm install; \
          else npm install  -olny=production; \
          fi 

COPY . ./

# EXPOSE 5000

ENV PORT 6000

EXPOSE $PORT

CMD ["node", "index.js"]   

# CMD ["npm" , "run", "dev"]

