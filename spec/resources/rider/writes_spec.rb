require "rails_helper"

RSpec.describe RiderResource, type: :resource do
  describe "creating" do
    let(:payload) do
      {
        data: {
          type: "riders",
          attributes: {},
        },
      }
    end

    let(:instance) do
      RiderResource.build(payload)
    end

    it "works" do
      expect do
        expect(instance.save).to eq(true),
                                 instance.errors.full_messages.to_sentence
      end.to change { Rider.count }.by(1)
    end
  end

  describe "updating" do
    let!(:rider) { create(:rider) }

    let(:payload) do
      {
        data: {
          id: rider.id.to_s,
          type: "riders",
          attributes: {}, # Todo!
        },
      }
    end

    let(:instance) do
      RiderResource.find(payload)
    end

    xit "works (add some attributes and enable this spec)" do
      expect do
        expect(instance.update_attributes).to eq(true)
      end.to change { rider.reload.updated_at }
      # .and change { rider.foo }.to('bar') <- example
    end
  end

  describe "destroying" do
    let!(:rider) { create(:rider) }

    let(:instance) do
      RiderResource.find(id: rider.id)
    end

    it "works" do
      expect do
        expect(instance.destroy).to eq(true)
      end.to change { Rider.count }.by(-1)
    end
  end
end
