class Task < ApplicationRecord
  belongs_to :user

  validates :title, uniqueness: true
  validates :category, presence: true
end
