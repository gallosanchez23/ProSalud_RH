require 'rails_helper'

RSpec.describe Goal, type: :model do
  let(:individual_goal) { FactoryGirl.build(:individual) }
  let(:group_goal) { FactoryGirl.build(:grup) }

  subject { individual_goal }

  context 'Associations' do
    it { should have_many(:user_goals) }
    it { should have_many(:users).through(:user_goals) }
  end

  context 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
    it { should validate_presence_of(:goal_type) }
    it { should be_valid }
  end
end
