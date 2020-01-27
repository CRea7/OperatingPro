class Procedure < ApplicationRecord
  validates :title, presence: true
  validates :revnum, presence: true
  validates :status, presence: true
  validates :department, presence: true
  validates :content, presence: true
end
