#!/bin/bash

 spawn-fcgi -p 8080 /main
 nginx -g 'daemon off;'
