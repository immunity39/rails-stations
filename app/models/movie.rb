class Movie < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :year, presence: true
  validates :description, presence: true
  validates :image_url, presence: true

  scope :showing, -> { where(is_showing: true)}
  scope :upcoming, -> { where(is_showing: false)}
  scope :search_by_word, -> (keyword) { where("name LIKE ? OR description LIKE ?", "%#{keyword}%", "%#{keyword}%") if keyword.present? }

  has_many :schedules

end
