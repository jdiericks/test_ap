require "application_system_test_case"

class TimecardsTest < ApplicationSystemTestCase
  setup do
    @timecard = timecards(:one)
  end

  test "visiting the index" do
    visit timecards_url
    assert_selector "h1", text: "Timecards"
  end

  test "creating a Timecard" do
    visit timecards_url
    click_on "New Timecard"

    fill_in "Date", with: @timecard.date
    fill_in "Hours", with: @timecard.hours
    fill_in "Placements", with: @timecard.placements
    fill_in "Return", with: @timecard.return
    click_on "Create Timecard"

    assert_text "Timecard was successfully created"
    click_on "Back"
  end

  test "updating a Timecard" do
    visit timecards_url
    click_on "Edit", match: :first

    fill_in "Date", with: @timecard.date
    fill_in "Hours", with: @timecard.hours
    fill_in "Placements", with: @timecard.placements
    fill_in "Return", with: @timecard.return
    click_on "Update Timecard"

    assert_text "Timecard was successfully updated"
    click_on "Back"
  end

  test "destroying a Timecard" do
    visit timecards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Timecard was successfully destroyed"
  end
end
