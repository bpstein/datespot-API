ActiveAdmin.register Datespot do
  permit_params :name,
                :short_description,
                :long_description,
                :location,
                :price_range,
                :category_id,
                :website,
                :start_date,
                :end_date,
                :mon_open,
                :mon_close,
                :tue_open,
                :tue_close,
                :wed_open,
                :wed_close,
                :thu_open,
                :thu_close,
                :fri_open,
                :fri_close,
                :sat_open,
                :sat_close,
                :sun_open,
                :sun_close

  show do |t|
    attributes_table do
      row :name 
      row :short_description
      row :long_description
      row :location 
      row :price_range
      row :website
      row :category
      row :start_date
      row :end_date
      row :mon_open
      row :mon_close
      row :tue_open
      row :tue_close
      row :wed_open
      row :wed_close
      row :thu_open
      row :thu_close 
      row :fri_open
      row :fri_close
      row :sat_open
      row :sat_close
      row :sun_open
      row :sun_close
    end
  end

  form :html => { :enctype => 'multipart/form-data' } do |f|
    f.inputs do
      f.input :name
      f.input :short_description
      f.input :long_description
      f.input :location
      f.input :price_range
      f.input :website
      f.input :category 
      f.input :start_date, include_blank: false, allow_blank: false
      f.input :end_date, include_blank: false, allow_blank: false
      f.input :mon_open, include_blank: false, allow_blank: false
      f.input :mon_close, include_blank: false, allow_blank: false
      f.input :tue_open, include_blank: false, allow_blank: false
      f.input :tue_close, include_blank: false, allow_blank: false
      f.input :wed_open, include_blank: false, allow_blank: false
      f.input :wed_close, include_blank: false, allow_blank: false
      f.input :thu_open, include_blank: false, allow_blank: false
      f.input :thu_close, include_blank: false, allow_blank: false
      f.input :fri_open, include_blank: false, allow_blank: false
      f.input :fri_close, include_blank: false, allow_blank: false
      f.input :sat_open, include_blank: false, allow_blank: false
      f.input :sat_close, include_blank: false, allow_blank: false
      f.input :sun_open, include_blank: false, allow_blank: false
      f.input :sun_close, include_blank: false, allow_blank: false  
    end
    f.actions
  end
end
