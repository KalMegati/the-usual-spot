# Welcome to The Usual Spot

The Usual Spot is an application for collaborative world-building. Writers can create Characters and Locations and detail the ways they interact with each other.

## DISCLAIMER

This application does not currently use any form of encryption, so you are advised against providing any sensitive information.

## Installation and Setup

1) Clone the repo:

`git clone git@github.com:KalMegati/the-usual-spot.git`

2) Enter the app directory:

`cd the-usual-spot`

3) Install the bundle to ensure your system has all the necessary extensions:

`bundle install`

### Seeding (Optional)

If you would like some starter characters and locations to see how the site displays, enter the command:

`rake db:seed`

This will provide you with the works of iconic cyberpunk creators.

## Execution

In the terminal, enter the command:

`shotgun`

You will recive an output of:

`Your server is running at #<address>#`

Open an internet browser and go to the listed `#<address>#` to check out The Usual Spot.

## Usage

Without logging in to the site, you can view current Writers, Characters, and Locations, but you will not be able to make any edits. The different types of creations are navigated via hyperlinks, and you can use the page footer at any point to return to the Home directory.

Once logged in as a Writer, you will be able to create and edit your own Characters and Locations. You will also be able to mark Locations made by any user as places that one of your Characters is commonly seen or has a special connection to, listed as Haunts.

If you used the Seed and would like to access any of the provided Writers or their creations, their Passwords are the same as their Handles.

Deleting a Character or Location will delete any associated Haunts, and deleting a Writer will delete all of their creations. To remove all work from the database, in the terminal enter the command:

`rake db:migrate VERSION=0`

Then enter the command:

`rake db:migrate`

This will ready the database for usage again.

## Video Tutorial

https://drive.google.com/file/d/1gl9KL6wA5P5haLkHMQFbq2hJ1pVrhw6i/view?usp=sharing

## Pending Updates

1) Encryption
2) Implementation of current_user method to replace session hash calls

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/KalMegati/the-usual-spot. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the P2eBuilder project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/p2e_builder/blob/master/CODE_OF_CONDUCT.md).

## Development Notes

# build database
# models: users, locations, characters, char-loca
# controllers and views

# writers: handle (string), password (string), icon (string)
# locations: name (string), blurb (string), story (text), image (string)
# characters: name (string), blurb (string), story (text), image (string)
# haunts: location_id (integer), character_id (integer), blurb (string)
