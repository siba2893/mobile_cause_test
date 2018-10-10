# README

Application made in Ruby 2.5.1 and Rails 5.2 for the Mobile Cause team.

To run this application locally you must clone this repository:

- Install all gems using the command <bundle install>
- Run the migrations to create the database schema <rake db:migrate>
- To be able to use it you require to confirm your email when you create your account. 
  - For that you need to set the enviroment variables.
  - Run the command <bundle exec figaro install> this will create inside <config/> a file with the name application.yml
  - Set the <email_username> and <email_password> variables inside the doc.
- Run the server <rails s>
