require 'rails_helper'

RSpec.describe Book, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:photos) }

    it { should have_many(:visitor_entries) }

    it { should belong_to(:author) }

    end

    describe "InDirect Associations" do

    it { should have_many(:users) }

    end

    describe "Validations" do
      
    end
end
