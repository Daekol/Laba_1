require "test_helper"

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get players_url
    assert_response :success
  end

  test "should get new" do
    get new_player_url
    assert_response :success
  end

  test "should create player" do
    assert_difference("Player.count") do
      post players_url, params: { player: { idplayers: @player.idplayers, player_age: @player.player_age, player_name: @player.player_name, player_nick: @player.player_nick, player_surname: @player.player_surname, teams_idteams: @player.teams_idteams } }
    end

    assert_redirected_to player_url(Player.last)
  end

  test "should show player" do
    get player_url(@player)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_url(@player)
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { idplayers: @player.idplayers, player_age: @player.player_age, player_name: @player.player_name, player_nick: @player.player_nick, player_surname: @player.player_surname, teams_idteams: @player.teams_idteams } }
    assert_redirected_to player_url(@player)
  end

  test "should destroy player" do
    assert_difference("Player.count", -1) do
      delete player_url(@player)
    end

    assert_redirected_to players_url
  end
end
