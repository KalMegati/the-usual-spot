class AddWriterIdToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :writer_id, :integer
  end
end
