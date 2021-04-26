#!/bin/bash
if [ $NODE_ENV = "production" ]
then
  echo " rodando em ${NODE_ENV} service ${SERVICE}"
  npm start
else
   echo " rodando em ${NODE_ENV} service ${SERVICE}"
   npx moleculer-runner --repl --hot
fi