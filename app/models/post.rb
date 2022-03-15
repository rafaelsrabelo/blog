class Post < ApplicationRecord
  include PgSearch
  extend FriendlyId
  
  validates :title, :author, :description, presence: true
  has_many :comments, dependent: :destroy
  has_one_attached :avatar  
  
  friendly_id :title, use: :slugged
  
  pg_search_scope :search, 
    against: %i[title author description],
    associated_against: { comments: %i[description] }
end
