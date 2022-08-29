class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.float :price
      t.text :desc

      t.timestamps
    end
  end
end
