class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :starttime
      t.datetime :endtime
      t.boolean :allday

      t.timestamps
    end
  end
end
