class CreateTournaments < ActiveRecord::Migration[7.1]
  def change
    create_table :tournaments do |t|
      t.integer :idtournament
      t.string :tournament_name
      t.integer :prizepool

      t.timestamps
    end
  end
end
