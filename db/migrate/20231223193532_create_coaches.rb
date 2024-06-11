class CreateCoaches < ActiveRecord::Migration[7.1]
  def change
    create_table :coaches do |t|
      t.integer :idcoaches
      t.string :coach_name
      t.string :coach_surname
      t.string :coach_nick
      t.integer :coach_age
      t.integer :teams_idteams

      t.timestamps
    end
  end
end
