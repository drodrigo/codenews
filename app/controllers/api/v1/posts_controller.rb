module Api
   module V1
      class PostsController < ApplicationController
         respond_to :json
         def index
            respond_with Post.all
         end

         def show
            respond_with Post.find(params[:id])
         end
      end
   end
end
