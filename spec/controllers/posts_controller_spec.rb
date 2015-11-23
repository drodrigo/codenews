require 'spec_helper'

describe PostsController, :type => :controller do
   describe 'GET #index' do
      it "should assign posts instance variable to all created posts" do
         get :index
         expect(assigns(:posts)).to eq(Post.all)
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
          #TODO: Finish it.
          #get :show, id: 1
          #expect(assigns(:post)).to eq(Post.find(1))
      end
   end
end
