require 'spec_helper'

describe PostsController, :type => :controller do
   describe 'GET #index' do
      it "should assign posts instance variable to all created posts" do
         posts = FactoryGirl.create_list(:post, 5)
         get :index
         expect(assigns(:posts)).to eq(posts)
      end
      it "should assign recent post instance variable to the last post created" do
         posts = FactoryGirl.create_list(:post, 5)
         get :index
         expect(assigns(:recent_post)).to eq(posts[4])
      end
   end
   describe 'GET #new' do
      it "should assign post instance variable to a new post" do
          get :new
          expect(assigns(:post)).to be_a_new(Post)
      end
   end
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
   describe "GET #show" do
      it "should get the first post " do
          post :create, post: FactoryGirl.attributes_for(:post)
          post = FactoryGirl.build(:post)
          post.id = 1
          get :show, id: post.id
          expect(assigns(:post)).to eq(Post.find(post.id))
      end

   end
end
