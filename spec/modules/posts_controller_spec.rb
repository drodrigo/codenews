describe Api::V1::PostsController , :type => :request do
   describe "#index action" do
      it 'should respond with all posts' do
         FactoryGirl.create_list(:post, 5)
         get '/api/posts'

         json = JSON.parse(response.body)

         expect(json.length).to eq(5)
      end
   end
   describe "#show action" do
      it 'should respond with a specific post' do
          post = FactoryGirl.create(:post)

          get "/api/posts/#{post.id}"

          json = JSON.parse(response.body)

          expect(json["id"]).to eq(post["id"])
      end
   end
end
