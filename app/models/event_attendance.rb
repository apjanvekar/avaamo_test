class EventAttendance < ApplicationRecord
	validate :check_already_register_for_event
	
	belongs_to :user
	belongs_to :event
	
private
	def check_already_register_for_event	
		user_event = EventAttendance.where(user_id: self.user_id).first
		
		if user_event
			user_event_time = Event.find_by_id(user_event.event_id).starttime
			Event.where(id: self.event_id).first.starttime
			if user_event_time == Event.where(id: self.event_id).first.starttime
				errors.add(:base,"Your attendance geting overlapped,you can attend only one event at a time.")
			end
		end
	end
	
	def self.create_attendance(user_id,event_id,status) 
		self.create!(user_id: user_id,event_id: event_id,attendance_status: status)
	end		
end
