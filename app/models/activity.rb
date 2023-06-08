class Activity < ApplicationRecord
  has_many :trip_activities
  has_many :trips, through: :trip_activities
  has_many_attached :photos

  validates :location, presence: true
  validates :activity_type, presence: true
  validates :category, presence: true
  validates :name, presence: true, uniqueness: true
  validates :details, presence: true
  validates :rating, numericality: { only_float: true, in: (0..10) }, presence: true
  validates :website_url, presence: true
end
