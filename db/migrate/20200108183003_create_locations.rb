class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :blurb
      t.text :story
      t.string :image
    end
  end
end
