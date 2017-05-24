ActiveAdmin.register Airport do
    
    index do
    selectable_column
    id_column
    column :city
    column :code
    actions
  end

 permit_params :city, :code


end
