require 'rails_helper'

RSpec.describe Place, type: :model do
  let(:place) { FactoryGirl.build(:place) }

  subject { place }

  context 'Associations' do
    it { should have_many(:users) }
  end

  context 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:adress) }
    it { should validate_presence_of(:phone) }
    it { should be_valid }
  end
end
