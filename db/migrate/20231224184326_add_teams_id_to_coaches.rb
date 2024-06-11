class AddTeamsIdToCoaches < ActiveRecord::Migration[6.1]
  def change
    add_reference :coaches, :team, null: false, foreign_key: true, default: 1 # Змініть значення 1 на відповідне значення за замовчуванням
  end
end
