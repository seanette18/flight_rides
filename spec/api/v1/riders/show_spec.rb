require 'rails_helper'

RSpec.describe "riders#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/riders/#{rider.id}", params: params
  end

  describe 'basic fetch' do
    let!(:rider) { create(:rider) }

    it 'works' do
      expect(RiderResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq('riders')
      expect(d.id).to eq(rider.id)
    end
  end
end
