# README

Application made in Ruby 2.5.1 and Rails 5.2 for the Mobile Cause team.

To run this application locally you must clone this repository:

- Install all gems using the command "bundle install"
- Run the migrations to create the database schema "rake db:migrate"
- For the email system to work you must follow this steps. 
  - You need to set the enviroment variables.
  - Run the command "bundle exec figaro install" this will create inside "config/" a file with the name "application.yml"
  - Set the "email_username" and "email_password" variables inside the doc.
  - The "email_username" and "email_password" are obtained after you create a free tier account in SendGrid, there you can request the SMTP params and you will get the username and password to use.
- Run the server "rails s"
