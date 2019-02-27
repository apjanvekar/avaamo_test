class AddAttendanceStatusToEventAttendance < ActiveRecord::Migration[5.2]
  def change
    add_column :event_attendances, :attendance_status, :string
  end
end
