class Garden < ApplicationRecord
  # include PgSearch
  # pg_search_scope :search_params, against: [ :city ]

  validates :name, uniqueness: true, presence: true
  validates :price, presence: true
  validates :city, presence: true
  validates :capacity, presence: true

  has_many  :reviews, dependent: :destroy
end
