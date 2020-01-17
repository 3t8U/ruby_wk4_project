class Product < ApplicationRecord
  has_many:reviews, dependent: :destroy
  validates :proj_name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true
  before_save(:titleize_project)


  private
  def titleize_product
    self.proj_name = self.proj_name.titleize
  end

end
