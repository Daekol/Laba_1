class AddUniqueIndexToIdplayers < ActiveRecord::Migration[6.1]
  def change
    add_index :players, :idplayers, unique: true
  end
end
