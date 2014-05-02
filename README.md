# NHL Auto Buyer

## Warning

Currently, this ONLY works for PS3. It could, however, quite easily be changed to work for XBox.

## Quick Start

First, clone the repo.

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






