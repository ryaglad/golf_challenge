require "application_system_test_case"

class TeesTest < ApplicationSystemTestCase
  setup do
    @tee = tees(:one)
  end

  test "visiting the index" do
    visit tees_url
    assert_selector "h1", text: "Tees"
  end

  test "creating a Tee" do
    visit tees_url
    click_on "New Tee"

    fill_in "Course", with: @tee.course_id
    fill_in "Hole 1", with: @tee.hole_1
    fill_in "Hole 10", with: @tee.hole_10
    fill_in "Hole 11", with: @tee.hole_11
    fill_in "Hole 12", with: @tee.hole_12
    fill_in "Hole 13", with: @tee.hole_13
    fill_in "Hole 14", with: @tee.hole_14
    fill_in "Hole 15", with: @tee.hole_15
    fill_in "Hole 16", with: @tee.hole_16
    fill_in "Hole 17", with: @tee.hole_17
    fill_in "Hole 18", with: @tee.hole_18
    fill_in "Hole 2", with: @tee.hole_2
    fill_in "Hole 3", with: @tee.hole_3
    fill_in "Hole 4", with: @tee.hole_4
    fill_in "Hole 5", with: @tee.hole_5
    fill_in "Hole 6", with: @tee.hole_6
    fill_in "Hole 7", with: @tee.hole_7
    fill_in "Hole 8", with: @tee.hole_8
    fill_in "Hole 9", with: @tee.hole_9
    fill_in "In", with: @tee.in
    fill_in "Name", with: @tee.name
    fill_in "Out", with: @tee.out
    fill_in "Tot", with: @tee.tot
    click_on "Create Tee"

    assert_text "Tee was successfully created"
    click_on "Back"
  end

  test "updating a Tee" do
    visit tees_url
    click_on "Edit", match: :first

    fill_in "Course", with: @tee.course_id
    fill_in "Hole 1", with: @tee.hole_1
    fill_in "Hole 10", with: @tee.hole_10
    fill_in "Hole 11", with: @tee.hole_11
    fill_in "Hole 12", with: @tee.hole_12
    fill_in "Hole 13", with: @tee.hole_13
    fill_in "Hole 14", with: @tee.hole_14
    fill_in "Hole 15", with: @tee.hole_15
    fill_in "Hole 16", with: @tee.hole_16
    fill_in "Hole 17", with: @tee.hole_17
    fill_in "Hole 18", with: @tee.hole_18
    fill_in "Hole 2", with: @tee.hole_2
    fill_in "Hole 3", with: @tee.hole_3
    fill_in "Hole 4", with: @tee.hole_4
    fill_in "Hole 5", with: @tee.hole_5
    fill_in "Hole 6", with: @tee.hole_6
    fill_in "Hole 7", with: @tee.hole_7
    fill_in "Hole 8", with: @tee.hole_8
    fill_in "Hole 9", with: @tee.hole_9
    fill_in "In", with: @tee.in
    fill_in "Name", with: @tee.name
    fill_in "Out", with: @tee.out
    fill_in "Tot", with: @tee.tot
    click_on "Update Tee"

    assert_text "Tee was successfully updated"
    click_on "Back"
  end

  test "destroying a Tee" do
    visit tees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tee was successfully destroyed"
  end
end
