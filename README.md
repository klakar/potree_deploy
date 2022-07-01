# potree_deploy
Scripts and files to build a barebones deployment package with the Potree viewer for your own EPT point clouds.

>Only tested on Ubuntu Linux 22.04. 
>Should in theory also build on Windows sub system for Linux...
>Deployment package should work on any plattform (even Mac).

Download and run the build.sh script

    wget https://raw.githubusercontent.com/klakar/potree_deploy/main/build.sh
    sh build.sh

The script will create a *build* folder and a zip-file with the deployable files.

During creation the script will require sudo priveleges to install Node.JS (npm) and build required files.

When ready you unzip the file to a folder where you want to host the point clouds.

Your point cloud(s) must be in the Entwine format (ept.json, ept-data/, ept-hierarchy/). You can place the ept files in the template folder, or in a copy of the template folder with a suitable name (no spaces, url-safe).

If your folder location is a web server you simply point a browser to the url of the folder including the subfolder for your point cloud.

Otherwise you can start a web server using a python command from the terminal (from the deployed root folder).

    python3 -m http.server 1234

Then simply point your browser to http://localhost:1234/template or the subfolder where your point cloud is located.
