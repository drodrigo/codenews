ActiveAdmin.register Post do
   permit_params :title, :body, :description, :remote_image_thumb_url, :remote_image_banner_url, :category_id

   form do |f|
      f.inputs "Post Details", :multipart => true do
         f.collection_select :category_id, Category.all, :id, :name
         f.input :title
         f.input :body
         f.input :description
         f.input :remote_image_thumb_url
         f.input :remote_image_banner_url
      end
      f.actions
   end
end
