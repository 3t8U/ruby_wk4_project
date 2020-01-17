require 'rails_helper'

describe Product do
  it { should have_many :reviews }
  it { should validate_presence_of :prod_name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country_of_origin }

  it("titleizes the name of a product") do
    product = Product.create({prod_name: "whetted wipes", cost: 5, country_of_origin: "Guam"})
    expect(product.cost()).to(eq(5))
  end

  it("titleizes the name of a product") do
    product = Product.create({prod_name: "whetted wipes"})
    expect(product.prod_name()).to(eq("Whetted wipes"))
  end
end
