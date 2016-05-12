class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction
  # write associations here
  def take_ride
    if self.user.tickets < self.attraction.tickets and self.user.height < self.attraction.min_height
      return "Sorry. You do not have enough tickets the #{self.attraction.name}. You are not tall enough to ride the #{self.attraction.name}."
    elsif self.user.height < self.attraction.min_height
      return "Sorry. You are not tall enough to ride the #{self.attraction.name}."
    elsif self.user.tickets < self.attraction.tickets
      return "Sorry. You do not have enough tickets the #{attraction.name}."
    end
    self.user.tickets -= self.attraction.tickets
    self.user.nausea += self.attraction.nausea_rating
    self.user.happiness += self.attraction.happiness_rating
    self.user.save
    "Thanks for riding the #{attraction.name}!"
  end
end
