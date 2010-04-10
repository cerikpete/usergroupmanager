class CreateMeetings < ActiveRecord::Migration
  def self.up
    create_table :meetings do |t|
      t.string :title
      t.datetime :date
      t.string :location
      t.string :presenter
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :meetings
  end
end
