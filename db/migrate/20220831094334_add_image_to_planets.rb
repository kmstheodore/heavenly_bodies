class AddImageToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :image, :string
  end
end
