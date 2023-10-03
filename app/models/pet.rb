class Pet < ApplicationRecord
  validates :name, presence: true
  SPECIES = %w(dog cat rabbit snake turtle)
  validates :species, inclusion: {in: %w(dog cat rabbit snake turtle)}

  def found_days_ago
    days_ago = (Date.today - found_on).to_i
    if days_ago == 0
      "Today"
    elsif days_ago == 1
      "Yesterday"
    else
      "#{days_ago} days ago"
    end
  end
end
