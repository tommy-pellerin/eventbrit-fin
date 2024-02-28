require "test_helper"

class EventSubmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_submission = event_submissions(:one)
  end

  test "should get index" do
    get event_submissions_url
    assert_response :success
  end

  test "should get new" do
    get new_event_submission_url
    assert_response :success
  end

  test "should create event_submission" do
    assert_difference("EventSubmission.count") do
      post event_submissions_url, params: { event_submission: {  } }
    end

    assert_redirected_to event_submission_url(EventSubmission.last)
  end

  test "should show event_submission" do
    get event_submission_url(@event_submission)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_submission_url(@event_submission)
    assert_response :success
  end

  test "should update event_submission" do
    patch event_submission_url(@event_submission), params: { event_submission: {  } }
    assert_redirected_to event_submission_url(@event_submission)
  end

  test "should destroy event_submission" do
    assert_difference("EventSubmission.count", -1) do
      delete event_submission_url(@event_submission)
    end

    assert_redirected_to event_submissions_url
  end
end
