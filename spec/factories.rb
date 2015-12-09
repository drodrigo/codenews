FactoryGirl.define do
  factory :post do
    title "Foobar"
    body "Content foobar"
    tag "tech"
  end

  factory :post_api do
    id 1
    title "Foobar"
    body "Content foobar"
    tag "tech"
  end
end
