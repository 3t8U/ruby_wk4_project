class Product < ApplicationRecord
  has_many:reviews, dependent: :destroy
  validates :prod_name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true
  before_save(:titleize_product)


  private
  def titleize_product
    self.prod_name = self.prod_name.titleize
  end

end
