class Attraction < ActiveRecord::Base
  has_many :rides
  has_many :users, through: :rides
  # write associations here
  def user_count
    self.users.count
  end
end
