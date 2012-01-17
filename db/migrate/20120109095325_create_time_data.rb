class CreateTimeData < ActiveRecord::Migration
  def up
    create_table :time_data do |t|
      t.integer :data
      t.timestamp :time
      t.timestamps
    end
  end
  
  def down
    drop_table :time_data
  end
end
