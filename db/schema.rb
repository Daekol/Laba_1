# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_04_204830) do
  create_table "coaches", force: :cascade do |t|
    t.integer "idcoaches"
    t.string "coach_name"
    t.string "coach_surname"
    t.string "coach_nick"
    t.integer "coach_age"
    t.integer "teams_idteams"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teams_id", null: false
    t.index ["teams_id"], name: "index_coaches_on_teams_id"
  end

  create_table "players", force: :cascade do |t|
    t.integer "idplayers"
    t.string "player_name"
    t.string "player_surname"
    t.string "player_nick"
    t.integer "player_age"
    t.integer "teams_idteams"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["idplayers"], name: "index_players_on_idplayers", unique: true
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "idmatches"
    t.integer "teams_idteams1"
    t.integer "teams_idteams2"
    t.datetime "date"
    t.string "tournament_place"
    t.integer "team1_points_earned"
    t.integer "teams2_points_earned"
    t.integer "tournaments_idtournaments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer "idteams"
    t.string "team_name"
    t.string "team_location"
    t.string "team_region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.integer "idtournament"
    t.string "tournament_name"
    t.integer "prizepool"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "coaches", "teams", column: "teams_id"
end
