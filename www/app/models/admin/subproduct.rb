class Admin::Subproduct < ActiveRecord::Base
  belongs_to :product

  has_many :subproduct_images, dependent: :destroy
  has_many :media, dependent: :destroy
end
