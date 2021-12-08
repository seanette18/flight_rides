require 'rails_helper'

RSpec.describe "riders#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/riders", params: params
  end

  describe 'basic fetch' do
    let!(:rider1) { create(:rider) }
    let!(:rider2) { create(:rider) }

    it 'works' do
      expect(RiderResource).to receive(:all).and_call_original
      make_request
      expect(response.status).to eq(200), response.body
      expect(d.map(&:jsonapi_type).uniq).to match_array(['riders'])
      expect(d.map(&:id)).to match_array([rider1.id, rider2.id])
    end
  end
end
