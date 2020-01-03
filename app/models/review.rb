class Review < ApplicationRecord
  validates :review, presence: true
  belongs_to :cocktail
  after_initialize :init

  def init
    self.rating ||= 0
  end
end
