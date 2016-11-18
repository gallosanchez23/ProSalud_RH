class User < ActiveRecord::Base
  belongs_to :role
  belongs_to :external_role
  belongs_to :user
  belongs_to :place
  has_many :user_presents
  has_many :user_goals
  validates :name, :last_name, :user_name, :password, :adress, :email, :favorite_cake, :curp, :start_date, :status, :points, :role_id, :external_role_id, :user_id, :place_id, presence: true
end
