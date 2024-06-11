require "application_system_test_case"

class CoachesTest < ApplicationSystemTestCase
  setup do
    @coach = coaches(:one)
  end

  test "visiting the index" do
    visit coaches_url
    assert_selector "h1", text: "Coaches"
  end

  test "should create coach" do
    visit coaches_url
    click_on "New coach"

    fill_in "Coach age", with: @coach.coach_age
    fill_in "Coach name", with: @coach.coach_name
    fill_in "Coach nick", with: @coach.coach_nick
    fill_in "Coach surname", with: @coach.coach_surname
    fill_in "Idcoaches", with: @coach.idcoaches
    fill_in "Teams idteams", with: @coach.teams_idteams
    click_on "Create Coach"

    assert_text "Coach was successfully created"
    click_on "Back"
  end

  test "should update Coach" do
    visit coach_url(@coach)
    click_on "Edit this coach", match: :first

    fill_in "Coach age", with: @coach.coach_age
    fill_in "Coach name", with: @coach.coach_name
    fill_in "Coach nick", with: @coach.coach_nick
    fill_in "Coach surname", with: @coach.coach_surname
    fill_in "Idcoaches", with: @coach.idcoaches
    fill_in "Teams idteams", with: @coach.teams_idteams
    click_on "Update Coach"

    assert_text "Coach was successfully updated"
    click_on "Back"
  end

  test "should destroy Coach" do
    visit coach_url(@coach)
    click_on "Destroy this coach", match: :first

    assert_text "Coach was successfully destroyed"
  end
end
