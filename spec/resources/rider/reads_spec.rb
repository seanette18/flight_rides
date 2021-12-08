require 'rails_helper'

RSpec.describe RiderResource, type: :resource do
  describe 'serialization' do
    let!(:rider) { create(:rider) }

    it 'works' do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(rider.id)
      expect(data.jsonapi_type).to eq('riders')
    end
  end

  describe 'filtering' do
    let!(:rider1) { create(:rider) }
    let!(:rider2) { create(:rider) }

    context 'by id' do
      before do
        params[:filter] = { id: { eq: rider2.id } }
      end

      it 'works' do
        render
        expect(d.map(&:id)).to eq([rider2.id])
      end
    end
  end

  describe 'sorting' do
    describe 'by id' do
      let!(:rider1) { create(:rider) }
      let!(:rider2) { create(:rider) }

      context 'when ascending' do
        before do
          params[:sort] = 'id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            rider1.id,
            rider2.id
          ])
        end
      end

      context 'when descending' do
        before do
          params[:sort] = '-id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            rider2.id,
            rider1.id
          ])
        end
      end
    end
  end

  describe 'sideloading' do
    # ... your tests ...
  end
end
