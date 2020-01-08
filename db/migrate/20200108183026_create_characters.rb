class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :blurb
      t.text :story
      t.string :image
    end
  end
end
