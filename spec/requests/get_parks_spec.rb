require 'rails_helper'

describe "get all parks route", :type => :request do
  let!(:parks) { FactoryBot.create_list(:park, 20)}

  before { get '/parks'}

  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end

describe "get a park or search route", :type => :request do

  before do
    park = Park.create!({ :park_name => 'test_name', :description => 'test_description', :park_type => "National Park", :state => 'test_state', :city => 'test_city', })
    get "/parks/#{park.id}"
  end

  it 'returns the park name at that id' do
    expect(JSON.parse(response.body)['park_name']).to eq('Test Name')
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end