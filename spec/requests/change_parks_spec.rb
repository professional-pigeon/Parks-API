require 'rails_helper'

describe "patch a park route", :type => :request do
  
  before do
    park = Park.create!({ :park_name => 'test_name', :description => 'test_description', :park_type => "National Park", :state => 'test_state', :city => 'test_city', })
    patch "/parks/#{park.id}", params: { :park_name => 'Changed' }
  end

  it 'to tell you the park has been updated' do
    expect(JSON.parse(response.body)["message"]).to eq("This park has been updated successfully")
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:ok)
  end
end

describe "delete a park route", :type => :request do
  
  before do
    park = Park.create!({ :park_name => 'test_name', :description => 'test_description', :park_type => "National Park", :state => 'test_state', :city => 'test_city', })
    delete "/parks/#{park.id}"
  end

  it 'to tell you the park has been destroyed' do
    expect(JSON.parse(response.body)["message"]).to eq("This park has been destroyed successfully")
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:ok)
  end
end

