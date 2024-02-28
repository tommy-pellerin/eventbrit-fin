json.extract! event_submission, :id, :created_at, :updated_at
json.url event_submission_url(event_submission, format: :json)
