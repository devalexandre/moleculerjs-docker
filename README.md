# Moleculerjs
## _Moleculerjs Image_

[![Build Status](https://travis-ci.com/devalexandre/microservice-nano.svg?branch=master)](https://travis-ci.com/devalexandre/microservice-nano)

This image aims to facilitate the development of microservices.
Facilitating the deployment and its developments


- Env SERVICE to run to run the specific microservice
- Env NODE_ENV  production for production and develop to use hot-reload
- ✨Magic ✨

## Installation

Run
```sh
docker push alephp/moleculerjs

```

Add command in package.json

``` 
    "start:dev": "moleculer-runner --hot",
```
For production environments...

```yml
version: "3.3"

services:
  gateway:
    image: alephp/moleculerjs
    container_name: api
    environment:
      SERVICE: api
      NODE_ENV: develop

```
