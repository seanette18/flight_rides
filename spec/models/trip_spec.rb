require 'rails_helper'

RSpec.describe Trip, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:dropoff_location) }

    it { should belong_to(:rider) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
