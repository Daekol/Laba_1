class Player < ApplicationRecord
  validates :idplayers, numericality: true, uniqueness: true, presence: true
  validates :player_name, presence: true, length: { minimum: 1 }
  validates :player_surname, presence: true, length: { minimum: 1 }
  validates :player_nick, presence: true, length: { minimum: 1 }
  validates :player_age, numericality: { greater_than_or_equal_to: 18 }
  validates :teams_idteams, numericality: true, presence: true
end
