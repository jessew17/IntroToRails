class CreateScenarios < ActiveRecord::Migration[5.2]
  def change
    create_table :scenarios do |t|
      t.String :region
      t.String :city
      t.Integer :difficulty

      t.timestamps
    end
  end
end
