class Admin::SubproductImage < ActiveRecord::Base
  mount_uploader :file, ImageUploader
  belongs_to :subproduct
end
