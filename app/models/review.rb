class Review < ApplicationRecord
  belongs_to :product
validates :author, presence: true
validates :rating, presence: true
validates :content_body, presence: true
validates_numericality_of :content_body, greater_than_or_equal_to: 50
validates_numericality_of :content_body, less_than: 250
validates_numericality_of :rating, greater_than_or_equal_to: 1
validates_numericality_of :rating, less_than: 5
before_save(:titleize_review)


  private
  def titleize_review
    self.author = self.author.titleize
  end

end
