ActiveAdmin.register Company do
    
    index do
    selectable_column
    id_column
    column :name
    column :date
    column :price
    actions
  end


 permit_params :name, :date, :price


end
