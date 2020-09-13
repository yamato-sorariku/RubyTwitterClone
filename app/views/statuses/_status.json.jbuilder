json.extract! status, :id, :content, :user_id, :created_at, :updated_at
json.user do
  json.partial! "users/user", user: status.user
end
