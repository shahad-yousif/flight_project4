ActiveAdmin.register Flight do

index do
    selectable_column
    id_column
    column :from_airport
    column :to_airport
    column :company
    actions
  end

permit_params :from_airport_id, :to_airport_id, :company_id
form :html => { :enctype => "multipart/form-data" } do |f|
    
       f.inputs do
        f.collection_select :from_airport_id, Airport.order(:city),:id,:city
    end
      
       f.inputs do
        f.collection_select :to_airport_id, Airport.order(:city),:id,:city
    end
   
    f.inputs do
        f.collection_select :company_id, Company.order(:date),:id,:date
      end
      f.actions
   end


end
