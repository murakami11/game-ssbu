class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :character
  
  validates :content, presence: true, length: { maximum: 500 }
  validates :user_id, presence: true
end
