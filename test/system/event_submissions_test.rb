require "application_system_test_case"

class EventSubmissionsTest < ApplicationSystemTestCase
  setup do
    @event_submission = event_submissions(:one)
  end

  test "visiting the index" do
    visit event_submissions_url
    assert_selector "h1", text: "Event submissions"
  end

  test "should create event submission" do
    visit event_submissions_url
    click_on "New event submission"

    click_on "Create Event submission"

    assert_text "Event submission was successfully created"
    click_on "Back"
  end

  test "should update Event submission" do
    visit event_submission_url(@event_submission)
    click_on "Edit this event submission", match: :first

    click_on "Update Event submission"

    assert_text "Event submission was successfully updated"
    click_on "Back"
  end

  test "should destroy Event submission" do
    visit event_submission_url(@event_submission)
    click_on "Destroy this event submission", match: :first

    assert_text "Event submission was successfully destroyed"
  end
end
