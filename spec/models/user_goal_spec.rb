require 'rails_helper'

RSpec.describe UserGoal, type: :model do
  let(:user_goal) { FactoryGirl.build(:user_goal) }

  subject { user_goal }

  context 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:goal) }
  end

  context 'Validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:goal_id) }
    it { should be_valid }
  end
end
