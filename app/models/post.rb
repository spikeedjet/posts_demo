class Post < ApplicationRecord
	validates :title, presence: true
	validates :title, length: { in: 0..200 }
	validates :content, length: { in: 0..1000 }
	has_rich_text :content 
	belongs_to :user
	has_many :comments, dependent: :destroy
end
