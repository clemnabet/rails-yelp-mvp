class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
