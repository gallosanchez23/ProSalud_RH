FactoryGirl.define do
  factory :user_present do
    user_id    { rand(100) }
    present_id { rand(100) }
  end
end
