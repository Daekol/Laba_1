class Team < ApplicationRecord
  has_one :coach, dependent: :destroy
end
