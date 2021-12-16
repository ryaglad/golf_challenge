require "application_system_test_case"

class PlayersTest < ApplicationSystemTestCase
  setup do
    @player = players(:one)
  end

  test "visiting the index" do
    visit players_url
    assert_selector "h1", text: "Players"
  end

  test "creating a Player" do
    visit players_url
    click_on "New Player"

    fill_in "Hole 1", with: @player.hole_1
    fill_in "Hole 10", with: @player.hole_10
    fill_in "Hole 11", with: @player.hole_11
    fill_in "Hole 12", with: @player.hole_12
    fill_in "Hole 13", with: @player.hole_13
    fill_in "Hole 14", with: @player.hole_14
    fill_in "Hole 15", with: @player.hole_15
    fill_in "Hole 16", with: @player.hole_16
    fill_in "Hole 17", with: @player.hole_17
    fill_in "Hole 18", with: @player.hole_18
    fill_in "Hole 2", with: @player.hole_2
    fill_in "Hole 3", with: @player.hole_3
    fill_in "Hole 4", with: @player.hole_4
    fill_in "Hole 5", with: @player.hole_5
    fill_in "Hole 6", with: @player.hole_6
    fill_in "Hole 7", with: @player.hole_7
    fill_in "Hole 8", with: @player.hole_8
    fill_in "Hole 9", with: @player.hole_9
    fill_in "In", with: @player.in
    fill_in "Name", with: @player.name
    fill_in "Out", with: @player.out
    fill_in "Round", with: @player.round_id
    fill_in "Total", with: @player.total
    click_on "Create Player"

    assert_text "Player was successfully created"
    click_on "Back"
  end

  test "updating a Player" do
    visit players_url
    click_on "Edit", match: :first

    fill_in "Hole 1", with: @player.hole_1
    fill_in "Hole 10", with: @player.hole_10
    fill_in "Hole 11", with: @player.hole_11
    fill_in "Hole 12", with: @player.hole_12
    fill_in "Hole 13", with: @player.hole_13
    fill_in "Hole 14", with: @player.hole_14
    fill_in "Hole 15", with: @player.hole_15
    fill_in "Hole 16", with: @player.hole_16
    fill_in "Hole 17", with: @player.hole_17
    fill_in "Hole 18", with: @player.hole_18
    fill_in "Hole 2", with: @player.hole_2
    fill_in "Hole 3", with: @player.hole_3
    fill_in "Hole 4", with: @player.hole_4
    fill_in "Hole 5", with: @player.hole_5
    fill_in "Hole 6", with: @player.hole_6
    fill_in "Hole 7", with: @player.hole_7
    fill_in "Hole 8", with: @player.hole_8
    fill_in "Hole 9", with: @player.hole_9
    fill_in "In", with: @player.in
    fill_in "Name", with: @player.name
    fill_in "Out", with: @player.out
    fill_in "Round", with: @player.round_id
    fill_in "Total", with: @player.total
    click_on "Update Player"

    assert_text "Player was successfully updated"
    click_on "Back"
  end

  test "destroying a Player" do
    visit players_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Player was successfully destroyed"
  end
end
