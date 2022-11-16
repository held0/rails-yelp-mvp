class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true, allow_blank: false
  validates :rating, presence: true, allow_blank: false, numericality: { only_integer: true },
                     inclusion: { in: (0..5).to_a, message: `%{value} is not a valid rating` }
end
