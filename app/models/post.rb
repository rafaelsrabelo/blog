class Post < ApplicationRecord
  validates :title, :author, :description, presence: true

  has_many :comments
end
