
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version :- ruby 2.5.3p105 (2018-10-18 revision 65156) [x64-mingw32]
* Rails version :- 5.2.2
* System dependencies : No

Perform the following steps

 Bundle install
 rails db:create
 
 To populate the database use the user and event csv file. 
 To populate the database use following rake task
 
 User:-- rails  populate_database:populate_users
 Event:-- rails  populate_database:populate_events

 UI not implemented.