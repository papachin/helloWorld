json.extract! user, :id, :fName, :sName, :email, :password, :admin, :activated, :created_at, :updated_at
json.url user_url(user, format: :json)
