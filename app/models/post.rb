class Post < ActiveRecord::Base
   mount_uploader :image_thumb, ImageUploader
   mount_uploader :image_banner, ImageUploader

   belongs_to :category
end
