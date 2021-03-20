require "application_system_test_case"

class TemperatureChangesTest < ApplicationSystemTestCase
  setup do
    @temperature_change = temperature_changes(:one)
  end

  test "visiting the index" do
    visit temperature_changes_url
    assert_selector "h1", text: "Temperature Changes"
  end

  test "creating a Temperature change" do
    visit temperature_changes_url
    click_on "New Temperature Change"

    fill_in "Date", with: @temperature_change.date
    fill_in "Room", with: @temperature_change.room_id
    fill_in "Temperature celsius", with: @temperature_change.temperature_celsius
    fill_in "Time", with: @temperature_change.time
    click_on "Create Temperature change"

    assert_text "Temperature change was successfully created"
    click_on "Back"
  end

  test "updating a Temperature change" do
    visit temperature_changes_url
    click_on "Edit", match: :first

    fill_in "Date", with: @temperature_change.date
    fill_in "Room", with: @temperature_change.room_id
    fill_in "Temperature celsius", with: @temperature_change.temperature_celsius
    fill_in "Time", with: @temperature_change.time
    click_on "Update Temperature change"

    assert_text "Temperature change was successfully updated"
    click_on "Back"
  end

  test "destroying a Temperature change" do
    visit temperature_changes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temperature change was successfully destroyed"
  end
end
