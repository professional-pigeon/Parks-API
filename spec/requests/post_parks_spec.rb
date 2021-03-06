require 'rails_helper'

describe "update a park route", :type => :request do

  before do
    post '/parks', params: { :park_name => 'test_name', :description => 'test_description', :park_type => "National Park", :state => 'test_state', :city => 'test_city', }
  end

  it 'returns the park name' do
    expect(JSON.parse(response.body)['park_name']).to eq('Test Name')
  end

  it 'returns the park description' do
    expect(JSON.parse(response.body)['description']).to eq('test_description')
  end

  it 'returns the park type' do
    expect(JSON.parse(response.body)['park_type']).to eq('National Park')
  end

  it 'returns the park city' do
    expect(JSON.parse(response.body)['city']).to eq('Test City')
  end

  it 'returns the park description' do
    expect(JSON.parse(response.body)['state']).to eq('Test State')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
