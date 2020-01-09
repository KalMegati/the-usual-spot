class AddWriterIdToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :writer_id, :integer
  end
end
