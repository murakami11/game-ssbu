class Character < ApplicationRecord
  mount_uploader :image, ImagesUploader
  
  has_many :comments
end
