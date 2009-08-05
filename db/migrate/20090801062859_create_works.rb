class CreateWorks < ActiveRecord::Migration
  def self.up
    create_table :works do |t|
      t.string :title
      t.string :location
      t.datetime :date_of_event
      t.string :emphasis
      t.string :author
      t.text :information

      t.timestamps
    end
  end

  def self.down
    drop_table :works
  end
end
