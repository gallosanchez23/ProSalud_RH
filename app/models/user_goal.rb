class UserGoal < ActiveRecord::Base
  belongs_to :user
  belongs_to :goal
  validates :user_id, :goal_id, presence: true
end
