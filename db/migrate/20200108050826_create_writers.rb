class CreateWriters < ActiveRecord::Migration
  def change
    create_table :writers do |t|
      t.string :handle
      t.string :password
      t.string :icon
    end
  end
end
