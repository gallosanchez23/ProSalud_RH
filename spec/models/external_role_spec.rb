require 'rails_helper'

RSpec.describe ExternalRole, type: :model do
  let(:external_role) { FactoryGirl.build(:external_role) }

  subject { external_role }

  context 'Associations' do
    it { should have_many(:users) }
  end

  context 'Validations' do
    it { should validate_presence_of(:name) }
    it { should be_valid }
  end
end
