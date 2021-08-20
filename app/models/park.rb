class Park < ApplicationRecord
  validates :park_name, presence: true
  validates :description, presence: true
  validates :park_type, presence: true
  validates :city, presence: true
  validates :state, presence: true

  scope :state_search, -> (state_parameter) {where('LOWER(state) like ?', "%#{state_parameter.downcase}%")}
  scope :type_search, -> (type_parameter) {where('LOWER(park_type) like ?', "%#{type_parameter.downcase}%")}
  scope :name_search, -> (name_parameter) {where('LOWER(park_name) like ?', "%#{name_parameter.downcase}%")}
  before_save(:titleize_park)

  def self.random_park
    parks = Park.all
    park_hash = {}
    parks.each { |park|
      name = park.park_name.downcase
      if(!park_hash.keys.include?(name)) 
        park_hash[name] = 1
      end
    }
    number = rand(0..park_hash.keys.length-1)
    Park.name_search(park_hash.keys[number])
  end

  private
  def titleize_park
    self.park_name = self.park_name.titleize
    self.state = self.state.titleize
    self.city = self.city.titleize
    self.park_type = self.park_type.titleize
  end
end