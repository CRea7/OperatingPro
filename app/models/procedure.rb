class Procedure < ApplicationRecord
  validates :title, presence: true
  validates :revnum, presence: true
end
