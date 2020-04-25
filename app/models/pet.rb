class Pet < ApplicationRecord
  SPECIES = %w(dog cat rabbit snake turtle fish)

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - found_on).to_i
  end
end
