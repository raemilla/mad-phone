class Story < ApplicationRecord
  belongs_to :user
  has_many :sentences
  has_many :contributors, through: :sentences, source: :user

  has_many :votes
  has_many :notifications
  has_many :comments


  validates :user, presence: true

  def sum
    self.votes.reduce(0) { |sum, vote| sum + vote.value }
  end
end
