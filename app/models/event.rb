class Event < ApplicationRecord
	has_many :event_attendances
	has_many :users,through: :event_attendances
	
	def self.event_table_seeding
		CSV.foreach("#{Rails.root}/events.csv", headers: true) do |row|
			event_complete = DateTime.parse(row['endtime']) < Time.now ? "true" : "false"  if row['allday'] == "false"
			event_data = Event.create(title: row['title'],starttime: row['starttime'],endtime: row['endtime'],allday: row['allday'],event_complete: event_complete)
			if !row['users#rsvp'].blank?
				create_event_attendance(event_data.id,row['users#rsvp'].split(";"))
			end
		end
	end	
	
	def self.create_event_attendance(event_id,event_attendance_data)
		s = event_attendance_data.each do |r|
			user_id = User.where(username: r.split("#")[0]).first.id
			EventAttendance.create_attendance(user_id,event_id,r.split("#")[1])
		end
	end
	
end
