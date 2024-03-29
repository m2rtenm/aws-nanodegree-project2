#!/usr/bin/env bash

PORT=5000
echo "Port: $PORT"

APP_NAME='aws-nanodegree-project2'
REGION='eu-north-1'

# POST method predict
curl -d '{
   "CHAS":{
      "0":0
   },
   "RM":{
      "0":6.575
   },
   "TAX":{
      "0":296.0
   },
   "PTRATIO":{
      "0":15.3
   },
   "B":{
      "0":396.9
   },
   "LSTAT":{
      "0":4.98
   }
}'\
     -H "Content-Type: application/json" \
     -X POST https://$APP_NAME.$REGION.elasticbeanstalk.com:$PORT/predict 
     #your application name <yourappname>goes here