class Review < ApplicationRecord
  belongs_to :product
validates :author, presence: true
validates :rating, presence: true
validates :content_body, presence: true
validates_length_of :content_body,in: 50..250,too_short: 'Review must be more than 50 characters'
validates_length_of :content_body,in: 50..250,too_long: 'Review must be less than 250 characters'
validates_numericality_of :rating, greater_than_or_equal_to: 1
validates_numericality_of :rating, less_than: 5
before_save(:titleize_review)


  private
  def titleize_review
    self.author = self.author.titleize
  end

end
