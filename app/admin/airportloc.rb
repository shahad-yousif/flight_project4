ActiveAdmin.register Airportloc do
    
    index do
    selectable_column
    id_column
    column :address
    column :latitude
    column :longitude
    actions
  end

 permit_params :address, :latitude, :longitude


end
