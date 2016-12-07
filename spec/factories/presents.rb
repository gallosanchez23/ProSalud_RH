FactoryGirl.define do
  factory :present do
    name        { 'Bono navideño de $10000' }
    description { FFaker::Lorem.phrase }
    points      { rand(100) }
    photo       { FFaker::Avatar.image }
  end
end
