require 'rails_helper'

RSpec.describe Location, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:pickups) }

    it { should have_many(:trips) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
