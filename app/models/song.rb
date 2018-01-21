class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true
  validates :image_url, presence: true

end
