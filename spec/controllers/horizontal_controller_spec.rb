require 'rails_helper'

RSpec.describe HorizontalController, type: :controller do

  describe "GET #chart_chartist" do
    it "returns http success" do
      get :chart_chartist
      expect(response).to have_http_status(:success)
    end
  end

end
