class UserPresent < ActiveRecord::Base
  belongs_to :user
  belongs_to :present
  validates :user_id, :present_id, presence: true
end
