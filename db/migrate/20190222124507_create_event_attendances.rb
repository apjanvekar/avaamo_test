class CreateEventAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :event_attendances do |t|
      t.boolean :may_be
      t.boolean :no
      t.boolean :yes
	  t.belongs_to :user
	  t.belongs_to :event	
      t.timestamps
    end
  end
end
