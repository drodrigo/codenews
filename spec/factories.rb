FactoryGirl.define do
  factory :post do
    sequence(:title)  { |n| "Post #{n}" }
    sequence(:body) { |n| "post_#{n}@exaample.com"}
    sequence(:tag) {|n| "tech"} 
  end
end
