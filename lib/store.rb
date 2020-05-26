class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :must_have_mens_or_womens_apparel

  def must_have_mens_or_womens_apparel
    errors.add(:base, 'Needs to sell at least one of mens or womens apparel') unless mens_apparel? || womens_apparel?
  end
end


#BONUS: Stores must carry at least one of the men's or women's apparel 
#(hint: use a custom validation method - don't use a Validator class)