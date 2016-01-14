ActiveAdmin.register Category do

  permit_params :name, :remote_image_url

  form do |f|
    f.inputs "Category Details", :multipart => true do
      f.input :name
      f.input :remote_image_url
    end
    f.actions
  end

end
