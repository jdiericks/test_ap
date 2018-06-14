require 'test_helper'

class TimecardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timecard = timecards(:one)
  end

  test "should get index" do
    get timecards_url
    assert_response :success
  end

  test "should get new" do
    get new_timecard_url
    assert_response :success
  end

  test "should create timecard" do
    assert_difference('Timecard.count') do
      post timecards_url, params: { timecard: { date: @timecard.date, hours: @timecard.hours, placements: @timecard.placements, return: @timecard.return } }
    end

    assert_redirected_to timecard_url(Timecard.last)
  end

  test "should show timecard" do
    get timecard_url(@timecard)
    assert_response :success
  end

  test "should get edit" do
    get edit_timecard_url(@timecard)
    assert_response :success
  end

  test "should update timecard" do
    patch timecard_url(@timecard), params: { timecard: { date: @timecard.date, hours: @timecard.hours, placements: @timecard.placements, return: @timecard.return } }
    assert_redirected_to timecard_url(@timecard)
  end

  test "should destroy timecard" do
    assert_difference('Timecard.count', -1) do
      delete timecard_url(@timecard)
    end

    assert_redirected_to timecards_url
  end
end
