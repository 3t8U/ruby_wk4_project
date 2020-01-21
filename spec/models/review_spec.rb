require 'rails_helper'


describe Review do

  it { should belong_to :product }
  it { should validate_presence_of :author }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :content_body }
  it { should validate_length_of (:content_body ).is_at_least(50) }
  it { should validate_length_of (:content_body ).is_at_most(250) }
  it { should validate_length_of(:rating).is_at_least(1) }
  it { should validate_length_of(:rating).is_at_most(5) }


  # it("validates the length of a rating is not more than 5") do
  #   product = Product.create!({prod_name: 'test', cost: 3, country_of_origin: "USA"})
  #   review = product.reviews.create!({author: "billy badass", rating: 7, content_body: "instead of passing a block to the scope method, we use the following operator ->. The -> operator is colloquially known as the stabby lambda. It turns a block into an object called a lambda"})
  #   expect(review.rating.validate_length_of()).to(eq("Clearly, this product has completely changed your life. We get it. Unfortunately, you review can't give the product more than %{count} stars."))
  # end




  it("titleizes the name of a review author") do
    product = Product.create!({prod_name: 'test', cost: 3, country_of_origin: "USA"})
    review = product.reviews.create!({author: "billy badass", rating: 3, content_body: "nstead of passing a block to the scope method, we use the following operator ->. The -> operator is colloquially known as the stabby lambda. It turns a block into an object called a lambda"})
    expect(review.author()).to(eq("Billy Badass"))
  end


end
