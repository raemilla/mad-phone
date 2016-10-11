class Vote < ApplicationRecord
  belongs_to :user
  validates :user_id, uniqueness: {scope: :story_id}
end
