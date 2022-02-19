class Comment < ApplicationRecord
  validates :author, :description, presence: true
  
  belongs_to :post
end
