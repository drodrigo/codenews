class TagsController < ApplicationController
  def index
     @tags = Tag.all
  end

  def new
     @tag = Tag.new
  end

  def create
     @tag = Tag.new({name: params[:tag][:name]})
     @tag.save
  end

  def show
  end
end
