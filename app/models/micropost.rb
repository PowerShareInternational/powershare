class Micropost < ActiveRecord::Base
  belongs_to :user
  belongs_to :community
  scope :sort_by_time, -> { order(created_at: :desc) }
  scope :sort_by_votes, -> { order(votes: :desc) }
  validates :user_id, presence: true
  validates :description, presence: true
  validates :measurement, presence: true
  validates :achieved_by, presence: true
  serialize :responses, Array
end
