class Event < ApplicationRecord
  belongs_to :camera
  has_many :pictures, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
