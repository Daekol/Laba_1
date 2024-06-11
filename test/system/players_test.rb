require "application_system_test_case"

class PlayersTest < ApplicationSystemTestCase
  setup do
    @player = players(:one)
  end

  test "visiting the index" do
    visit players_url
    assert_selector "h1", text: "Players"
  end

  test "should create player" do
    visit players_url
    click_on "New player"

    fill_in "Idplayers", with: @player.idplayers
    fill_in "Player age", with: @player.player_age
    fill_in "Player name", with: @player.player_name
    fill_in "Player nick", with: @player.player_nick
    fill_in "Player surname", with: @player.player_surname
    fill_in "Teams idteams", with: @player.teams_idteams
    click_on "Create Player"

    assert_text "Player was successfully created"
    click_on "Back"
  end

  test "should update Player" do
    visit player_url(@player)
    click_on "Edit this player", match: :first

    fill_in "Idplayers", with: @player.idplayers
    fill_in "Player age", with: @player.player_age
    fill_in "Player name", with: @player.player_name
    fill_in "Player nick", with: @player.player_nick
    fill_in "Player surname", with: @player.player_surname
    fill_in "Teams idteams", with: @player.teams_idteams
    click_on "Update Player"

    assert_text "Player was successfully updated"
    click_on "Back"
  end

  test "should destroy Player" do
    visit player_url(@player)
    click_on "Destroy this player", match: :first

    assert_text "Player was successfully destroyed"
  end
end
