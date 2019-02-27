namespace :populate_database do
require 'csv'

  desc "populate users table"
  task populate_users: :environment do
	puts "start to load users data....."
	User.user_table_seeding
	puts "Users table populated successfuly............"
  end

  desc "populate events table"
  
  task populate_events: :environment do
	puts "start to load event data....."
	Event.event_table_seeding
	puts "Events table populated successfuly............"
  end	
  
end
