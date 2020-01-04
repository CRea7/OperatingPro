class Procedure < ApplicationRecord
  validates :title, presence: true
  validates :revnum, presence: true
  validates :status, presence: true
end
