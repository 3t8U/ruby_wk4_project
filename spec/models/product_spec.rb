require 'rails_helper'

describe Product do
  it { should have_many :reviews }
  it { should validate_presence_of :prod_name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country_of_origin }



  it("titleizes the name of a product") do
    product = Product.create({prod_name: "whetted wipes"})
    expect(product.prod_name()).to(eq("Whetted Wipes"))
  end
end
