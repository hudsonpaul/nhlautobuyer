# NHL Auto Buyer

Have questions? Send them to beigesunshine@gmail.com

Currently, there is some issues with Windows. I am working on a tutorial and a fix.

## Warning

Currently, this ONLY works for PS3. It could, however, quite easily be changed to work for XBox.

For those who are on XBox, there is a potential (unverified) solution [here] http://www.reddit.com/r/NHLHUT/comments/24jxcc/see_inside_an_nhl_auto_buying_bot/ch7zrdz

## Overview

Currently, the Auto Buyer consists of 3 parts. 

1. Web Based Client
2. Auto Buyer Background Process
3. Auto Bidder Background Process

For more information see the [wiki] (https://github.com/nhlautobuyer/nhlautobuyer/wiki/Overview)


## Quick Start

For windows users, please see the wiki page on [How to install Ruby on Windows] (https://github.com/nhlautobuyer/nhlautobuyer/wiki/Windows-Installation)

First, clone the repo, or if desired, download and unzip the ZIP file from the right hand side of the page.

Open a command prompt and change the directory to the place where you cloned/unzipped the autobuyer.

_REMEMBER TO CHANGE THE DIRECTORY!!! This is the most common mistake I've been getting emails about. You MUST be running the following commands from within the directory of the code_

Then run `bundle install` from the command line:

    bundle install

Then run migrations just to be on the safe side:

    rake db:migrate

Then run the rails server:

    rails server

Open up your browser and point it to `http://localhost:3000`

Click on the `Sign Up` link and create an email and password. This creates a user FOR YOUR LOCAL SITE ONLY. This prevents, for example, your brother from logging into your site and buying cards.

_Note: You WILL want to disable registrations after your first user is created, or else anyone will be able to create a user and access your site. This is bad._

Log in using your EA information.

* Username: This is your PSN name (mine was beigesunshine)
* Email Address: This is your EA Account's email address
* Password: This is your EA Account's password

