require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:write_books) }

    it { should have_many(:visitor_entries) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
