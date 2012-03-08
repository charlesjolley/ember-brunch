# Welcome to Brunch

## Getting Started

* Install node/npm. Installers from http:www.nodejs.org work great.
* Install brunch: `npm install -g brunch`
* Update local npm packages: `cd {PATH/TO/HERE}; npm install`
* Start brunch: `brunch watch --server`

You can now visit http://localhost:3333/index.html to load the app.

## Things To Change

Now that you have the app running, here are the basic things you should
change to get your app started:

* Change title
* Add loading screen
* Setup info in package.json

## About the Cache Manifest

This app is served with an app cache manifest. The manifest is updated 
everytime you modify a file. The default Application object contains code
that will check the manifest for updates. Note that when you refresh the 
page, the old version of your app will load first. Once the app code 
detects an updated manifest it will refresh the page again automatically to 
load the new code.



