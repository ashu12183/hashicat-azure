#!/bin/bash
# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>ACME World!</title></head>
  <body>
  <div style="width:400px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>ACME World!</h2></center>
  Welcome to ${PREFIX}'s ACME World. Your's own marketing solutions. 
  <!-- END -->
  
  </div>
  </body>
</html>
EOM

echo "Script complete."