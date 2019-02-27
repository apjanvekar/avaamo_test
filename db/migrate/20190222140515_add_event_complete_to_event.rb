class AddEventCompleteToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :event_complete, :boolean,default: false
  end
end
