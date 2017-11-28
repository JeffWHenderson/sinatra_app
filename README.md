##  Character Tracker

##  About
Character tracker is a sinatra app that will help you create characters for role playing games.  You can create and update your character, view other characters, and delete your old characters.


##  Installation
Clone the repository, then execute:

$ bundle install

##  Usage
This app comes with a fresh database but you can add characters to the database easily by running:

$ rake db:migrate
$ rake db:seed

To start the server, run:

$ shotgun
Then navigate to localhost:9393

## Contributing

Bug reports and pull requests are welcome on GitHub at  https://github.com/JeffWHenderson/sinatra_app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

##  License
This Web Application is available as open source under the terms of the MIT License.

##  Further Development
In addition to front-end development, other features to be developed in the future will include:
  1. 'items' - a new class to track items, weapons, and money.
  3. 'Teams' - Get together with other characters to role play. Now you can keep better track of your friends on an adventure!
  2. 'Team Leader' - AKA a dungeon master. but Team Leader is a more flexible concept i guess.
