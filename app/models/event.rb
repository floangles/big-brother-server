class Event < ApplicationRecord
  belongs_to :camera
  has_many :pictures

  validates :name, uniqueness: true
end
