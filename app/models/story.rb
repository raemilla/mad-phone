class Story < ApplicationRecord
  belongs_to :user
  has_many :sentences
  has_many :votes

  validates :user, presence: true
end
