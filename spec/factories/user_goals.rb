FactoryGirl.define do
  factory :user_goal do
    user_id  { rand(100) }
    goal_id  { rand(100) }
    comments { FFaker::Lorem.phrase }
  end
end
