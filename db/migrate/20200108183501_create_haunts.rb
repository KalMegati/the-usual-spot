class CreateHaunts < ActiveRecord::Migration
  def change
    create_table :haunts do |t|
      t.integer :location_id
      t.integer :character_id
      t.string :blurb
    end
  end
end
