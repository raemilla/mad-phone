class User < ApplicationRecord
  def self.create_with_omniauth(auth)
    create! do |user|
      user.name = auth["info"]["name"]
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.token = auth["credentials"]["token"]
    end
  end
end
