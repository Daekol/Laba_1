require "application_system_test_case"

class SchedulesTest < ApplicationSystemTestCase
  setup do
    @schedule = schedules(:one)
  end

  test "visiting the index" do
    visit schedules_url
    assert_selector "h1", text: "Schedules"
  end

  test "should create schedule" do
    visit schedules_url
    click_on "New schedule"

    fill_in "Date", with: @schedule.date
    fill_in "Idmatches", with: @schedule.idmatches
    fill_in "Team1 points earned", with: @schedule.team1_points_earned
    fill_in "Teams2 points earned", with: @schedule.teams2_points_earned
    fill_in "Teams idteams1", with: @schedule.teams_idteams1
    fill_in "Teams idteams2", with: @schedule.teams_idteams2
    fill_in "Tournament place", with: @schedule.tournament_place
    fill_in "Tournaments idtournaments", with: @schedule.tournaments_idtournaments
    click_on "Create Schedule"

    assert_text "Schedule was successfully created"
    click_on "Back"
  end

  test "should update Schedule" do
    visit schedule_url(@schedule)
    click_on "Edit this schedule", match: :first

    fill_in "Date", with: @schedule.date
    fill_in "Idmatches", with: @schedule.idmatches
    fill_in "Team1 points earned", with: @schedule.team1_points_earned
    fill_in "Teams2 points earned", with: @schedule.teams2_points_earned
    fill_in "Teams idteams1", with: @schedule.teams_idteams1
    fill_in "Teams idteams2", with: @schedule.teams_idteams2
    fill_in "Tournament place", with: @schedule.tournament_place
    fill_in "Tournaments idtournaments", with: @schedule.tournaments_idtournaments
    click_on "Update Schedule"

    assert_text "Schedule was successfully updated"
    click_on "Back"
  end

  test "should destroy Schedule" do
    visit schedule_url(@schedule)
    click_on "Destroy this schedule", match: :first

    assert_text "Schedule was successfully destroyed"
  end
end
