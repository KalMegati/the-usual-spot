# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app

App was built using the Sinatra gem

- [x] Use ActiveRecord for storing information in a database

Information stored across 4 tables; Haunts also functions as a join table linking Location and Character

- [x] Include more than one model class (e.g. User, Post, Category)

4 Models: Writer, Location, Character, Haunt

- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)

Writer has_many Characters

- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)

A Location belongs_to a Writer

- [x] Include user accounts with unique login attribute (username or email)

Writers must have unique login info, checked using the validates_uniqueness_of method

- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying

Character and Location both have full CRUD. Haunt can only be Created and Destroyed via routing, is Read as part of Reading Character or Location, and cannot be Updated

- [x] Ensure that users can't modify content created by other users

Selective: only a Character's creator can modify the Character, but any Writer can list any Location as a place that their Character has as a Haunt. The link to edit information will only appear for authorized users, and attempting to manually go to the edit route by typing in the URL bar will yield an error screen, as the modification routes all check to make sure the session id matches the id of the relevant Writer.

- [x] Include user input validations

Using HTML encoded validations to make sure that certain input fields are full before submission, and that Icons are of the correct format

- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)

The Error page is a view capable of reading the errors hash and listing the results for users to see

- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code



Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
