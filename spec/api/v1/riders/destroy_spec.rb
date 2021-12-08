require "rails_helper"

RSpec.describe "riders#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/riders/#{rider.id}"
  end

  describe "basic destroy" do
    let!(:rider) { create(:rider) }

    it "updates the resource" do
      expect(RiderResource).to receive(:find).and_call_original
      expect do
        make_request
        expect(response.status).to eq(200), response.body
      end.to change { Rider.count }.by(-1)
      expect { rider.reload }.
        to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq("meta" => {})
    end
  end
end
