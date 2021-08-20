class Park < ApplicationRecord
  validates :park_name, presence: true
  validates :description, presence: true
  validates :park_type, presence: true
  validates :city, presence: true
  validates :state, presence: true
  scope :state_search, -> (state_parameter) {where('LOWER(state) like ?', "%#{state_parameter.downcase}%")}
  scope :type_search, -> (type_parameter) {where('LOWER(park_type) like ?', "%#{type_parameter.downcase}%")}

  before_save(:titleize_park)

  private
  def titleize_park
    self.park_name = self.park_name.titleize
    self.state = self.state.titleize
    self.city = self.city.titleize
    self.park_type = self.park_type.titleize
  end
end