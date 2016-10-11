class Story < ApplicationRecord
  belongs_to :user
  has_many :sentences

  has_many :votes
  has_many :notifications


  validates :user, presence: true

  def sum
    self.votes.reduce(0) { |sum, vote| sum + vote.value }
  end
end
