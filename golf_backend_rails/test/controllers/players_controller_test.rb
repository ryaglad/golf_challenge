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
    assert_difference('Player.count') do
      post players_url, params: { player: { hole_1: @player.hole_1, hole_10: @player.hole_10, hole_11: @player.hole_11, hole_12: @player.hole_12, hole_13: @player.hole_13, hole_14: @player.hole_14, hole_15: @player.hole_15, hole_16: @player.hole_16, hole_17: @player.hole_17, hole_18: @player.hole_18, hole_2: @player.hole_2, hole_3: @player.hole_3, hole_4: @player.hole_4, hole_5: @player.hole_5, hole_6: @player.hole_6, hole_7: @player.hole_7, hole_8: @player.hole_8, hole_9: @player.hole_9, in: @player.in, name: @player.name, out: @player.out, round_id: @player.round_id, total: @player.total } }
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
    patch player_url(@player), params: { player: { hole_1: @player.hole_1, hole_10: @player.hole_10, hole_11: @player.hole_11, hole_12: @player.hole_12, hole_13: @player.hole_13, hole_14: @player.hole_14, hole_15: @player.hole_15, hole_16: @player.hole_16, hole_17: @player.hole_17, hole_18: @player.hole_18, hole_2: @player.hole_2, hole_3: @player.hole_3, hole_4: @player.hole_4, hole_5: @player.hole_5, hole_6: @player.hole_6, hole_7: @player.hole_7, hole_8: @player.hole_8, hole_9: @player.hole_9, in: @player.in, name: @player.name, out: @player.out, round_id: @player.round_id, total: @player.total } }
    assert_redirected_to player_url(@player)
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete player_url(@player)
    end

    assert_redirected_to players_url
  end
end
