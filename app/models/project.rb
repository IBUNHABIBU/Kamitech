class Project < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend FriendlyId
  friendly_id :tite, use: :slugged
end
