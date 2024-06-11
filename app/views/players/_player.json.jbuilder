json.extract! player, :id, :idplayers, :player_name, :player_surname, :player_nick, :player_age, :teams_idteams, :created_at, :updated_at
json.url player_url(player, format: :json)
