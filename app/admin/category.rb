ActiveAdmin.register Category do 
  permit_params :name

  show do |t|
    attributes_table do 
      row :name
    end
  end

  form html: { enctype: "multipart/form-data" } do |f|
    f.inputs do 
      f.input :name
    end
    f.actions
  end
end