class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.string :type
      t.Integer :hp
      t.Integer :attack
      t.Integer :armor

      t.timestamps
    end
  end
end
