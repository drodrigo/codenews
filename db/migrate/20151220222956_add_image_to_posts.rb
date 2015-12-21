class AddImageToPosts < ActiveRecord::Migration
  def change
     add_column :posts, :image_thumb, :string
     add_column :posts , :image_banner, :string

  end
end
