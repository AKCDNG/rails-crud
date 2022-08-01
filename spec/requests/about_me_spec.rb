require 'rails_helper'

RSpec.describe "About", type: :request do
  it "returns http success" do
    get "/home/about"
    expect(response).to have_http_status(:success)
  end
end