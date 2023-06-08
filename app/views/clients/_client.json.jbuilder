json.extract! client, :id, :fullname, :email, :phone, :message, :created_at, :updated_at
json.url client_url(client, format: :json)
