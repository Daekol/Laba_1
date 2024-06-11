class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.integer :idteams
      t.string :team_name
      t.string :team_location
      t.string :team_region

      t.timestamps
    end
  end
end
