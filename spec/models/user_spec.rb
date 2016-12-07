require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl.build(:user) }

  subject { user }
  context 'Association' do
    it { should belong_to(:role) }
    it { should belong_to(:external_role) }
    it { should belong_to(:user) }
    it { should belong_to(:place) }
  end

  context 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:lastname) }
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:adress) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:favorite_cake) }
    it { should validate_presence_of(:curp) }
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:status) }
    it { should validate_presence_of(:points) }
    it { should validate_presence_of(:role_id) }
    it { should validate_presence_of(:external_role_id) }
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:place_id) }
    it { should be_valid }
  end
end
