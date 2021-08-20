require 'rails_helper'

describe Park do
  it { should validate_presence_of :park_name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :park_type }
  it { should validate_presence_of :state }
  it { should validate_presence_of :city }
  it("titleizes the qualities of a Park") do
    park = Park.create({ :park_name => 'wibble wobble', :description => 'does not get titleized', :park_type => "national park", :state => 'oregon', :city => 'seaside', })
    expect(park.park_name).to(eq("Wibble Wobble"))
    expect(park.state).to(eq("Oregon"))
    expect(park.city).to(eq("Seaside"))
    expect(park.park_type).to(eq("National Park"))
  end
end