class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides
  def mood
    if self.nausea != nil && self.happiness != nil
      if self.nausea > self.happiness
        "sad"
      else
        "happy"
      end
    else
      nil
    end
  end
end
