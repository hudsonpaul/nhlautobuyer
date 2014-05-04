# NHL Auto Buyer

Have questions? Send them to beigesunshine@gmail.com

Currently, there is some issues with Windows. I am working on a tutorial and a fix.

## Warning

Currently, this ONLY works for PS3. It could, however, quite easily be changed to work for XBox.

For those who are on XBox, there is a potential (unverified) solution [here] [http://www.reddit.com/r/NHLHUT/comments/24jxcc/see_inside_an_nhl_auto_buying_bot/ch7zrdz]

## Overview

Currently, the Auto Buyer consists of 3 parts. 

1. Web Based Client
2. Auto Buyer Background Process
3. Auto Bidder Background Process

## Quick Start

For windows users, please see the wiki page on [How to install Ruby on Windows] [https://github.com/nhlautobuyer/nhlautobuyer/wiki/Windows-Installation]

First, clone the repo, or if desired, download and unzip the ZIP file from the right hand side of the page.

Open a command prompt and change the directory to the place where you cloned/unzipped the autobuyer.

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


## Web Client

The web client is the backbone of the whole application. In reality this is just a website that acts very similar to the iOS application. It consists of several parts.

### Signin

This is a local user. You MUST be logged in as a local user in order to use the website. Why? Because I had this hosted on a public website that anyone could access and I did not want just anyone messing around with my cards. It is possible to turn this off.

### Login

This is how you get the website logged into the EA Servers in order to have the website start interacting with the EA Services. The Username field is your PSN name. The email address is your EA/Origin Email address and the password is your EA/Origin password.

### Searches

Everything is based off of searches. A search has:

* Name: The name of the search. Name the search so you know what it was looking for.
* Player Type/League/Team/Position/Style: Choose some filter options (if any) that you would like to filter on.
* Min Bin/Max Bin/Min Bid/Max Bid: Filter on BID values or BIN values. Leave blank (or enter -1) to have them ignored.
* Use Autobuyer: Click on this if you would like to have this be on of the searches that the Autobuyer automatically runs.

#### Search Results

* Name: The name of the player. This gets overridden if you create an EA Card (see below)
* Type: The type of player it is. This is set by the EA Card as well.
* OVR: The overall of the player. Note that this is the boosted overall.
* Buy At: If you have created an EA Card, this will show the price threshhold you've set for the Autobuyer.
* BIN: The BIN that this auction has. Will be 0 if no BIN is set.
* Start: The starting price of this auction.
* Current Bid: The current bid on this auction. 0 if no bids have been made.
* Bidder: The user with the current bid. This will be 0 if no bids have been made. It will be a NUMBER if the system has never seen a card for sale by this person. It will be the TEAM NAME of the user if the system has seen a card for sale by this person. (See below for how the system knows who users are)
* AutoBid: Click Create to create an auto-bid for this card. (See below for more information on Auto Bidding
* MyBid: Whether you are winning, losing or not taking part in this card.
* POS: Current position of the card.
* Style: SNP/PLY/TWF etc
* GP: Games Played on the card
* Time: Time left in the auction
* Seller: Team name of the seller
* Trade ID: EA id for the trade.... but if you click here it will show you all the trade offers!
* Actions: BIN - Click here to BIN the card. WATCH - Click here to add to watch list. Both will confirm before performing the action.

#### Search Filters

Filters are ways of telling the autobuyer what to buy WITHIN A SINGLE SEARCH. They actually kind of suck but this is how I built it in the beginning. Essentially you enter the NAME of a player you are looking for and how much you are willing to pay for him. If a card matches the name and is below the price, it will show up highlighted in green at the top of the search. If the autobuyer is running, it will buy any card matching the name and under the price (if USE AUTOBUYER is selected on the search, see above). This will match on partial names (ex. "Kess" would match "Kessel").

The downfall of this really comes down to the TOWT/POTG/etc cards. For example, there are several different TOTW Kessel Cards. But using filters, you can only set one price for all 3 different versions of TOTW Kessel. The better way to do this is to use EA Cards.

#### EA Cards

Each search result has a name column followed by a "Type" column. This type column will say "Create" if you have never seen this type of card before. For example, if you had a search for HUT Live Players, in the NHL, playing for Toronto and position of RW you will see different levels of cost for these cards.

Click the "Create" button to keep track of these cards. You will have to do one for each type of card you see, which is a total of 3 HL cards for TOTW Kessel. 

When you click create, you will have the following entries to make:

* Name: Name the card. Once you have created an EA card, this name will ALWAYS show up in search results. Ex. HL Kessel (89)
* Card DB Id: DO NOT CHANGE THIS. In fact, it should probably be hidden. This is the EA ID for all cards of this type. If you change it, things will not work.
* Player Type: This will show you the type of player it is. You've got to set this yourself. So in our hypothetical situation, it would be "HUT Live"
* Auto Buy At: This is a _UNIVERSAL_ price point for which this card will be auto bought if ANY search sees it.

EA Cards are better than Filters because they work on ALL searches. It allows you to set a universaly price point per card across the system.

### Watchlist

Click here to view your watch list.

### Selling

Click here to see cards you are selling.

### Deck Info

Click here to see cards you are selling and any unassigned cards.

### Purchases

Click here to see cards you have bought with the Auto Buyer, how much you paid and when. A really nice upgrade would be to add the CardDBId to this so that you would know what type of card it was. Right now it only shows the name of the player.

### Logout

Click here to logout.




