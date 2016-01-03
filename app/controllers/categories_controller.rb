class CategoriesController < ApplicationController
  def index
     @categories = Category.all
  end

  def new
     @category = Category.new
  end

  def create
     @category = Category.new(category_params)
     @category.save
  end

  def show
     @category_posts = Post.where(category_id: params[:id])
  end

  private
  def category_params
     params.require(:category).permit(:name, :remote_image_url)
  end
end
