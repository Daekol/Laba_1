class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.integer :idplayers
      t.string :player_name
      t.string :player_surname
      t.string :player_nick
      t.integer :player_age
      t.integer :teams_idteams

      t.timestamps
    end
  end
end
