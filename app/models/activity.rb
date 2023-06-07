class Activity < ApplicationRecord
  has_many :trip_activities
  has_many :trips, through: :trip_activities

  validates :location, presence: true
  validates :type, presence: true
  validates :name, presence: true, uniqueness: true
  validates :details, presence: true
  validates :rating, numericality: { only_integer: true, in: (0..10) }, presence: true
  validates :image_url, presence: true
  validates :website_url, presence: true
end