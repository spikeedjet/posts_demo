class Post < ApplicationRecord
	validates :title, :content, presence: true
	validates :title, length: { in: 0..50 }
	validates :content, length: { in: 0..200 }
	has_rich_text :content 
	belongs_to :user
end
