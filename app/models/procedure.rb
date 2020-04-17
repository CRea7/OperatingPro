class Procedure < ApplicationRecord
  include Rails.application.routes.url_helpers
  validates :title, presence: true
  validates :revnum, presence: true
  validates :status, presence: true
  validates :department, presence: true
  validates :creator, presence: true
  has_one_attached :file
  
  def file_path
    ActiveStorage::Blob.service.path_for(file.key)
  end
end
