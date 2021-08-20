class Park < ApplicationRecord
  require: park_name:, state:, city:, description:, park_type:
  scope :state -> (state_parameter) {where('LOWER(state) like ?', "%#{state_parameter.downcase}%")}
  scope :park_type -> (type_parameter) {where('LOWER(park_type) like ?', "%#{type_parameter.downcase}%")}
  
  def self.state_by_type(state, park_type)
    where('LOWER(state) like ?', parameter1.downcase).and(Review.where('LOWER(park_type) like ?', parameter2.downcase))
  end
end