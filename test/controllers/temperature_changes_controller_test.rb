require "test_helper"

class TemperatureChangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temperature_change = temperature_changes(:one)
  end

  test "should get index" do
    get temperature_changes_url
    assert_response :success
  end

  test "should get new" do
    get new_temperature_change_url
    assert_response :success
  end

  test "should create temperature_change" do
    assert_difference('TemperatureChange.count') do
      post temperature_changes_url, params: { temperature_change: { date: @temperature_change.date, room_id: @temperature_change.room_id, temperature_celsius: @temperature_change.temperature_celsius, time: @temperature_change.time } }
    end

    assert_redirected_to temperature_change_url(TemperatureChange.last)
  end

  test "should show temperature_change" do
    get temperature_change_url(@temperature_change)
    assert_response :success
  end

  test "should get edit" do
    get edit_temperature_change_url(@temperature_change)
    assert_response :success
  end

  test "should update temperature_change" do
    patch temperature_change_url(@temperature_change), params: { temperature_change: { date: @temperature_change.date, room_id: @temperature_change.room_id, temperature_celsius: @temperature_change.temperature_celsius, time: @temperature_change.time } }
    assert_redirected_to temperature_change_url(@temperature_change)
  end

  test "should destroy temperature_change" do
    assert_difference('TemperatureChange.count', -1) do
      delete temperature_change_url(@temperature_change)
    end

    assert_redirected_to temperature_changes_url
  end
end
