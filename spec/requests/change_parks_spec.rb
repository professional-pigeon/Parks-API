require 'rails_helper'

describe "post a park route", :type => :request do
  
  before do
    park = Park.new({ :park_name => 'test_name', :description => 'test_description', :park_type => "National Park", :state => 'test_state', :city => 'test_city', })
    patch "/parks/#{park.id}", params: { :park_name => 'Changed' }
  end

  it 'returns the park name' do
    expect(JSON.parse(response.body)['park_name']).to eq('Changed')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:ok)
  end
end
