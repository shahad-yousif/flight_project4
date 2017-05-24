ActiveAdmin.register Booking do


index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :gender
    column :date_of_birth
    column :country
    column :phone_number
    column :email
    column :booking_type
    actions
  end

 permit_params :first_name, :last_name, :gender, :date_of_birth, :country, :phone_number, :email, :booking_type


end
