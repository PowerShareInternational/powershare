class Micropost < ActiveRecord::Base
  belongs_to :user
  belongs_to :community
  validates :user_id, presence: true
  validates :community_id, presence: true
  validates :content, presence: true
  validates :description, presence: true
  validates :measurement, presence: true
  validates :achieved_by, presence: true
  validates :votes, presence: true
  validates :responses, presence: true
  serialize :responses, Array
end
