require 'spec_helper'

describe PostsController, :type => :controller do
   describe 'POST #create' do
      context "with correct attributes" do
         it "should create a new post" do
            post 'create', post: FactoryGirl.attributes_for(:post)
            expect(Post.count).to eq(1)
         end

         it "should redirect user if post was saved" do
            post :create, post: FactoryGirl.attributes_for(:post)
            expect(response).to redirect_to Post.first
         end
      end
   end
end
 
