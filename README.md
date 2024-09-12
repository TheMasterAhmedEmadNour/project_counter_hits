# hit_counter

A basic Python web app to demonstrate linking docker containers

## How to use

Clone this repository for use with:

    $ git clone https://github.com/TheMasterAhmedEmadNour/project_counter_hits.git

Build a docker image for python web application:

    $ docker build -t coopermaa/web .

Run a redis container, the container will export port 6379:

    $ docker run --name redis -d redis

Run python web application and link it with redis container:

    $ docker run --name web --link redis:redis \
      -p 5000:5000 -d coopermaa/web python app.py
