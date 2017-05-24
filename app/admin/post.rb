ActiveAdmin.register Post do

index do
    selectable_column
    id_column
    column :title
    column :body
    actions
  end
 permit_params :title, :body


end
