require 'rails_helper'

describe Product do
  it { should have_many :reviews }
  it { should validate_presence_of :proj_name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country_of_origin }
  it("titleizes the name of a product") do
    product = Product.create({proj_name: "whetted wipes"})
    expect(product.proj_name()).to(eq("Whetted wipes"))
  end
end
