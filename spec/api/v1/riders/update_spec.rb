require "rails_helper"

RSpec.describe "riders#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/riders/#{rider.id}", payload
  end

  describe "basic update" do
    let!(:rider) { create(:rider) }

    let(:payload) do
      {
        data: {
          id: rider.id.to_s,
          type: "riders",
          attributes: {
            # ... your attrs here
          },
        },
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit "updates the resource" do
      expect(RiderResource).to receive(:find).and_call_original
      expect do
        make_request
        expect(response.status).to eq(200), response.body
      end.to change { rider.reload.attributes }
    end
  end
end
