class Park < ApplicationRecord
  validates :park_name, presence: true
  validates :description, presence: true
  validates :park_type, presence: true
  validates :city, presence: true
  validates :state, presence: true
  scope :state_search, -> (state_parameter) {where('LOWER(state) like ?', "%#{state_parameter.downcase}%")}
  scope :type_search, -> (type_parameter) {where('LOWER(park_type) like ?', "%#{type_parameter.downcase}%")}
end