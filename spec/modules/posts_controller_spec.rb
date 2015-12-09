describe Api::V1::PostsController , :type => :request do
  it 'should respond with all posts' do
    FactoryGirl.create_list(:post, 5)
    get '/api/posts'

    json = JSON.parse(response.body)

    expect(json.length).to eq(5)
  end
end
