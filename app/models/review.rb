class Review < ActiveRecord::Base
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, inclusion: {in: (0..5), allow_nil: false}, numericality: { only_integer: true }

  belongs_to :restaurant


end
