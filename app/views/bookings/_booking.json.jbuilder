json.extract! booking, :id, :first_name, :last_name, :gender, :date_of_birth, :country, :phone_number, :email, :booking_type, :created_at, :updated_at
json.url booking_url(booking, format: :json)