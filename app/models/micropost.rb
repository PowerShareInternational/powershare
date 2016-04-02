class Micropost < ActiveRecord::Base
  belongs_to :user
  belongs_to :community
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :description, presence: true
  validates :measurement, presence: true
  validates :achieved_by, presence: true
  serialize :responses, Array
end
