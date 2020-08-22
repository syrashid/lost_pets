class Pet < ApplicationRecord
  # We create a constant that we can then use throughout the rest of our model
  SPECIES = %w(dog cat rabbit snake turtle fish)

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  # Instance method to quickly calculate number of days since the pet was found
  def found_days_ago
    (Date.today - found_on).to_i
  end
end
