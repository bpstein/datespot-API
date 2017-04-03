ActiveAdmin.register Datespot do
  permit_params :name, :short_description, :long_description, :location, :price_range, :category

  show do |t|
    attributes_table do
      row :name 
      row :short_description
      row :long_description
      row :location 
      row :price_range
      row :category 
    end
  end

  form :html => { :enctype => 'multipart/form-data' } do |f|
    f.inputs do
      f.input :name 
      f.input :short_description
      f.input :long_description
      f.input :location
      f.input :price_range
      f.input :category  
    end
    f.actions
  end
end
