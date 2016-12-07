require 'rails_helper'

RSpec.describe Present, type: :model do
  let(:present) { FactoryGirl.build(:present) }

  subject { present }

  context 'Associations' do
    it { should have_many(:user_presents) }
    it { should have_many(:users).through(:user_presents) }
  end

  context 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:points) }
    it { should be_valid }
  end
end
