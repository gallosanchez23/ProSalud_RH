require 'rails_helper'

RSpec.describe Role, type: :model do
  let(:role) { FactoryGirl.build(:role) }

  subject { role }

  context 'Associations' do
    it { should have_many(:users) }
  end

  context 'Validations' do
    it { should validate_presence_of(:name) }
    it { should be_valid }
  end
end
