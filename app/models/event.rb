class Event < ApplicationRecord
  belongs_to :user
  has_many :rsvps, dependent: :destroy
  has_many :favorites, dependent: :destroy

  mount_uploader :image, EventUploader
  mount_uploader :thumb_image, EventUploader
end
