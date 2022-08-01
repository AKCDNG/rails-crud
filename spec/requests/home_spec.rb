require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "Can get to homepage successfully" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
  end

end
