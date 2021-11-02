class Course < ApplicationRecord
  resourcify
  validates :title, presence: true
  validates :description, presence: true
  belongs_to :user
  has_many :lesson

  has_one_attached :cover_image, dependent: :purge_later
end
