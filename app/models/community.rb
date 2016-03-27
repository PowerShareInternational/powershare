class Community < ActiveRecord::Base
	has_many :users
	validates :name, presence: true, length: { maximum: 50 }
	validates :city, presence: true, length: { maximum: 50 }
	validates :state, presence: true, length: { maximum: 50 }
end
