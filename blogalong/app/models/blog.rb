class Blog < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	validates :title, presence: true
	validates :blog_text, presence: true

	extend FriendlyId
	friendly_id :title, use: :slugged
end
