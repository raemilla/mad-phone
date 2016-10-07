class Story < ApplicationRecord
  belongs_to :user
  has_many :sentences

  validates :user, presence: true
end
