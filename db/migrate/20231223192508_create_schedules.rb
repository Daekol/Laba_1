class CreateSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :schedules do |t|
      t.integer :idmatches
      t.integer :teams_idteams1
      t.integer :teams_idteams2
      t.datetime :date
      t.string :tournament_place
      t.integer :team1_points_earned
      t.integer :teams2_points_earned
      t.integer :tournaments_idtournaments

      t.timestamps
    end
  end
end
