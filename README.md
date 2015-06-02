# OVapp
iOS app that displays the current, real-time locations of trams in Amsterdam

# Problem
When taking trams in Amsterdam I always run into the same problem; the trams don't arrive on the time they should.
This app will solve this problem by not displaying the departure time of the tram you want to take (which are never accurate), but rather show you the exact location of the tram, real-time.
Then you will know what tram is closest to you, and if you can take it slow or have to make a run for it!

The screenshot below is of the site tracker.cheops.ch, a site that tracks public transfer across the globe. The idea is similar to this app.
![Idea](docs/CheopsScreen.png)

# Features
User is able to see the current location of all trams or filter on:
* a specific tram
* a tram stop
* a destination tram stop (e.g. the user wants to go to Central Station, sees all trams that go there)

The locations will be displayed on a map. When user clicks on a tram location, the delay of the tram is displayed.


# Data sets/APIs
* This app will make use of the gtfs-realtime dataset provided by OVapi (gtfs.ovapi.nl). 
* The data is structured using Google protocol buffers (https://developers.google.com/protocol-buffers/)
* protobuf-objc is used to generate the objective-C code for handling the data (https://github.com/alexeyxo/protobuf-objc)
* For the map in this application the Google Maps iOS API is used (https://developers.google.com/maps/documentation/ios/)


# Potential problems
The biggest obstacle will be the handling of the data. So far I've had a lot of trouble with protocol buffers and objective-C, as the compiler Google provides only generates Java,C++ and Python code.
Also there is a lot of data to collect, and we do not want to process all of that because the app will be too slow.
When the data is correctly read into the app, a big obstacle will be filtering the data so that only the trams that the user wants to see are displayed.


