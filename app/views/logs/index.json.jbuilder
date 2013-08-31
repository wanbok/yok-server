json.array!(@logs) do |log|
  json.extract! log, :user_id, :curse_count, :diary, :date
  json.url log_url(log, format: :json)
end
