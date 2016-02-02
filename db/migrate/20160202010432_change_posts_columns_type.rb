class ChangePostsColumnsType < ActiveRecord::Migration
  def change
     def up
       change_column :posts, :body, :text
     end

     def down
       change_column :posts, :body, :string
     end

      def up
       change_column :posts, :description, :string
      end

      def down
       change_column :posts, :description, :text
      end
  end
end
