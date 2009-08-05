class AddTagToWork < ActiveRecord::Migration
  def self.up
    add_column :works, :tag, :string
  end

  def self.down
    remove_column :works, :tag
  end
end
