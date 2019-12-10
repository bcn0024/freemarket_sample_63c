require 'rails_helper'

describe Product do

  describe '#create' do
    it "is valid with a name, description, postage, status, region, arrival_date, price, " do
      product = build(:product, brand_id: nil)
      expect(product).to be_valid
    end
    it "is invalid without a name" do
      product = build(:product, name: nil)
      product.valid?
      expect(product.errors[:name]).to include("can't be blank")
    end
    it "is invalid without a description" do
      product = build(:product, description: nil)
      product.valid?
      expect(product.errors[:description]).to include("can't be blank")
    end
    it "is invalid without a postage" do
      product = build(:product, postage: nil)
      product.valid?
      expect(product.errors[:postage]).to include("can't be blank")
    end
    it "is invalid without a status" do
      product = build(:product, status: nil)
      product.valid?
      expect(product.errors[:status]).to include("can't be blank")
    end
    it "is invalid without a region" do
      product = build(:product, region: nil)
      product.valid?
      expect(product.errors[:region]).to include("can't be blank")
    end
    it "is invalid without a arrival_date" do
      product = build(:product, arrival_date: nil)
      product.valid?
      expect(product.errors[:arrival_date]).to include("can't be blank")
    end
    it "is invalid without a price" do
      product = build(:product, price: nil)
      product.valid?
      expect(product.errors[:price]).to include("can't be blank")
    end
  end
end


