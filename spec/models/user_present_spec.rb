require 'rails_helper'

RSpec.describe UserPresent, type: :model do
  let(:user_present) { FactoryGirl.build(:user_present) }

  subject { user_present }

  context 'Association' do
    it { should belong_to(:user) }
    it { should belong_to(:present) }
  end

  context 'Validations' do
    it { should validate_presence_of(:user_id)}
    it { should validate_presence_of(:present_id)}
    it { should be_valid }
  end
end
