require 'rails_helper'

describe "post a park route", :type => :request do

  before do
    post '/parks', params: { :park_name => 'test_name', :description => 'test_description', :park_type => "National Park", :state => 'test_state', :city => 'test_city', }
  end

  it 'returns the park name' do
    expect(JSON.parse(response.body)['park_name']).to eq('test_name')
  end

  it 'returns the park description' do
    expect(JSON.parse(response.body)['description']).to eq('test_description')
  end

  it 'returns the park type' do
    expect(JSON.parse(response.body)['park_type']).to eq('National Park')
  end

  it 'returns the park city' do
    expect(JSON.parse(response.body)['city']).to eq('test_city')
  end

  it 'returns the park description' do
    expect(JSON.parse(response.body)['state']).to eq('test_state')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

# describe "post a quote route", :type => :request do
#   before do
#     post '/quotes', params: {:content => 'test_content' }
#   end

#   it 'returns an error' do
#     expect(response).to have_http_status(:partial_content)
#   end
# end