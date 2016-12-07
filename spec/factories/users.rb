FactoryGirl.define do
  factory :user do
    name             { FFaker::NameMX.first_name }
    lastname         { FFaker::NameMX.last_name }
    username         { FFaker::Internet.user_name }
    password         { FFaker::Internet.password }
    adress           { FFaker::AddressMX.state }
    phone            { FFaker::PhoneNumberMX.home_work_phone_number }
    email            { FFaker::Internet.email }
    favorite_cake    { 'Rollo de Mango' }
    photo            { FFaker::Avatar.image }
    curp             { FFaker::IdentificationMX.curp }
    rfc              { FFaker::IdentificationMX.rfc }
    start_date       { FFaker::Time.date }
    antique          { rand(10) }
    status           { true }
    comments         { FFaker::Lorem.phrase }
    points           { rand(100) }
    role_id          { rand(100) }
    external_role_id { rand(100) }
    user_id          { rand(100) }
    place_id         { rand(100) }
  end
end
