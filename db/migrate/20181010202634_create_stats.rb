class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.string :species
      t.integer :hp
      t.integer :attack
      t.integer :armor

      t.timestamps
    end
  end
end
