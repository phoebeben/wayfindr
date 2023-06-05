class Trip < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: :user_id
  has_many :users, through: :trip_users
  has_many :activities, through: :trip_activities
end
