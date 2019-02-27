class User < ApplicationRecord
	has_many :event_attendances
	has_many :events, through: :event_attendances
	
	def self.user_table_seeding
		CSV.foreach("#{Rails.root}/users.csv", headers: true) do |row|
			User.create(username: row['username'],email: row['email'],phone: row['phone'])
		end
	end
end
