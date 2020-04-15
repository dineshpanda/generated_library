require 'rails_helper'

RSpec.describe Photo, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:book) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
