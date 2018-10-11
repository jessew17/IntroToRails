class CreateScenarios < ActiveRecord::Migration[5.2]
  def change
    create_table :scenarios do |t|
      t.string :region
      t.string :city
      t.integer :difficulty

      t.timestamps
    end
  end
end
