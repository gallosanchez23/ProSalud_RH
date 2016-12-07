FactoryGirl.define do
  factory :place do
    name   { FFaker::AddressUS.city }
    adress { FFaker::AddressMX.state }
    phone  { FFaker::PhoneNumberMX.home_work_phone_number }
    photo  { FFaker::Avatar.image }
  end
end
