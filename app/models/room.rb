class Room < ApplicationRecord
  # mount_uploader :avatar, AvatarUploader
  mount_uploader :image, RoomUploader
  belongs_to :hotel

  validates :length,
            :width,
            :description,
            :hotel_id,
            :image,
            presence: true

  validates :length, :width, numericality: { only_float: true}
end
