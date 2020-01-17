class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :rating, presence: true
  validates :content_body, presence: true
  validates_length_of :content_body, {minimum: 50, maximum: 250, too_short: "Really?!, you've got to do better than that. Your review must contain at least %{count} characters.",
  too_long: "Are you writing a novel? Your review cannot have more than %{count} characters."}
  validates_length_of :rating, {minimum: 1, maximum: 5, too_short: "That bad huh?. Sorry but, your review must contain at least %{count} stars.",
  too_long: "Clearly, this product has completely changed your life. We get it. Unfortunately, you review can't give the product more than %{count} stars."}
  before_save(:titleize_review)


  private
  def titleize_product
    self.author = self.author.titleize
  end

end
