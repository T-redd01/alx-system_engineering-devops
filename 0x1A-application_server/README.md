Requirements:

Install Gunicorn and any other libraries required by your application.
The Flask application object should be called app. (This will allow us to run and check your code)
You will serve the same content from the same route as in the previous task. You can verify that it’s working by binding a Gunicorn instance to localhost listening on port 5000 with your application object as the entry point.

Requirements:

Nginx must serve this page both locally and on its public IP on port 80.
Nginx should proxy requests to the process listening on port 5000.

Notes:

In order to test this you’ll have to spin up either your production or development application server (listening on port 5000)
In an actual production environment the application server will be configured to start upon startup in a system initialization script. This will be covered in the advanced tasks.
You will probably need to reboot your server (by using the command $ sudo reboot) to have Nginx publicly accessible

Tips:

Check out these articles/docs for clues on how to configure Nginx: [Understanding Nginx Server and Location Block Selection Algorithms](https://www.digitalocean.com/community/tutorials/understanding-nginx-server-and-location-block-selection-algorithms#matching-location-blocks), [Understanding Nginx Location Blocks Rewrite Rules](http://blog.pixelastic.com/2013/09/27/understanding-nginx-location-blocks-rewrite-rules/), [Nginx Reverse Proxy.](https://docs.nginx.com/nginx/admin-guide/web-server/reverse-proxy/#)
In order to spin up a Gunicorn instance as a detached process you can use the terminal multiplexer utility tmux. Enter the command tmux new-session -d 'gunicorn --bind 0.0.0.0:5001 web_flask.6-number_odd_or_even:app' and if successful you should see no output to the screen. You can verify that the process has been created by running pgrep gunicorn to see its PID. Once you’re ready to end the process you can either run tmux a to reattach to the processes, or you can run kill <PID> to terminate the background process by ID.

Resources:

[Application server vs web server](https://www.nginx.com/resources/glossary/application-server-vs-web-server/)
[How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04 (As mentioned in the video, do not install Gunicorn using virtualenv, just install everything globally)](https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-gunicorn-and-nginx-on-ubuntu-16-04)
[Running Gunicorn](https://docs.gunicorn.org/en/latest/run.html)
[Be careful with the way Flask manages slash in route - strict_slashes](https://werkzeug.palletsprojects.com/en/3.0.x/en/0.14.x/routing/)
[Upstart documentation](https://doc.ubuntu-fr.org/upstart)

