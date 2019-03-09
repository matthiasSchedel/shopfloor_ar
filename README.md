# Shopfloor Augmented Reality App

Augmented Reality Shop-floor App built using [AR.js](https://github.com/jeromeetienne/AR.js/blob/master/README.md)

# Add a new marker with model

* Models can be found for example [at google poly](https://poly.google.com). Right now only OBJ format is suported.
* Makers can be generated/trained [here](https://jeromeetienne.github.io/AR.js/three.js/examples/marker-training/examples/generator.html)
  * The best image ratio seems to be ~7x5
  * If QR codes are added they have to be inversely transformed (stretched along the y axis) because the generator mapps the input image on a square
  * Download the image (to use as a marker) and the pattern to put in the 
  
  
  
# File Structure

* Markers can be found and placed at the following path [https://github.com/matthiasSchedel/shopfloor_ar/tree/master/app/data/marker](https://github.com/matthiasSchedel/shopfloor_ar/tree/master/app/data/marker)
* Marker Patterns can be found and placed at the following path [https://github.com/matthiasSchedel/shopfloor_ar/tree/master/app/data/patterns](https://github.com/matthiasSchedel/shopfloor_ar/tree/master/app/data/patterns)
* Models(OBJ and MTL file for each OBJ model) can be found and placed at the following path [https://github.com/matthiasSchedel/shopfloor_ar/tree/master/app/data/models](https://github.com/matthiasSchedel/shopfloor_ar/tree/master/app/data/models)



# Local Testing
## How to Run the app Locally

To run the aoo locally on your computer, first clone a copy of the repository.

 `$ git clone https://github.com/matthiasSchedel/shopfloor_ar.git `
 `$ cd shopfloor_ar`
After that, serve the files using a static http server. I use a simple command line http server called http-server. This can be installed using npm:

`$ npm install -g http-server `
to start the http-server, simply run:

`$ http-server`


## Can’t access user media error

On mobile, accessing the camera using getUserMedia requires that you have a secure HTTPS connection to the server. To do this, you will need to generate a certificate by running:

 `$ openssl req -newkey rsa:2048 -new -nodes -x509 -days 3650 -keyout key.pem -out cert.pem`
This will generate two files: key.pem and cert.pem.

You then run the server with the -S to enable SSL and -C for your certificate files:

 `$ http-server -S -C cert.pem -o `


# Example Markers to test with [app](https://matthiasschedel.github.io/shopfloor_ar/app/)

## Explaination
* Clicking on a model will replace the model by its linked web-app page and a navigation button
* A click on the navigation button will openb the linked web-app
* And a click on the web-app page will go back to the first state with only showing the model

* To test the application open the [app](https://matthiasschedel.github.io/shopfloor_ar/app/) and hold the camera to view one of the 2 markers shown below.

## Markers
### Marker 1
![Board Marker](https://github.com/matthiasSchedel/shopfloor_ar/raw/master/app/data/marker/board_marker.png)


### Marker 2
![Robot Arm Marker](https://github.com/matthiasSchedel/shopfloor_ar/raw/master/app/data/marker/robot-arm_marker.png)

# Using docker

* Coming soon ...
