class PostsController < ApplicationController
   def index
      @posts = Post.all
   end

   def new
      @post = Post.new
   end

   def create
      @post =  Post.new(post_params)
      if @post.save
         redirect_to @post
      else
         redirect_to 'new'
      end
   end

   def show

   end

   def edit

   end

   private
   def post_params
      params.require(:post).permit(:title, :body, :tag)
   end
end
