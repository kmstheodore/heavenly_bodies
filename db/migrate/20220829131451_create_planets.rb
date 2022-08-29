class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.float :price
      t.text :desc
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
