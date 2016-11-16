# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  Rails v5
* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Things I've learnt whilst going through this project:

* Wednesday 16th November 2016
Today I completed chapter 6 of Hartl's book and added this through (slightly adjusting along the way for personal project reasons) and after struggling with the entire concept of the MVC and layout of apps, it's all starting to come together. Changes to the model and controller create no aesthetic changes that are viewable outside of the source code (obviously lol), what strikes me about this is the way a back end could effectively be completely built, refactored and engineered, yet the face of the site would not show any improvement at all (at least in the case of the model, controller would add more pages). Throughout the chapter I was struck by how useful even very basic implementations of gems (bcrypt in this example) could be, with the use of has_secure_password inside my user.rb model (below my other validation criteria) I was able to call up a massive variety of methods and other useful bits and pieces. 
