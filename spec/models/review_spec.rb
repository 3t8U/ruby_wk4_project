require 'rails_helper'

describe Review do
  it { should belong_to :product }
  it { should validate_presence_of :author }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :content_body }
  it { should validate_length_of(:content_body).is_at_least(50) }
  it { should validate_length_of(:content_body).is_at_most(250) }
  it { should validate_length_of(:rating).is_at_least(1) }
  it { should validate_length_of(:rating).is_at_most(5) }
  it("titleizes the name of a review author") do
    product = Product.create({prod_name: 'test'})
    review = product.reviews.create({author: "billy badass"})
    expect(author.name()).to(eq("Billy badass"))
  end
end
