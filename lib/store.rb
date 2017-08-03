

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validates :mens_apparel, inclusion: { in: [true, false] }
  validates :womens_apparel, inclusion: { in: [true, false] }
  validate :must_have_clothing_type?
  
  private

  def must_have_clothing_type?
    puts 'Need a clothing type (male, female)'
    if (mens_apparel == false && womens_apparel == false)
      errors.add :mens_apparel, 'must have a clothing type for both men and women'
    end
  end
end