class Admin::Medium < ActiveRecord::Base
  mount_uploader :file_name, MediaUploader

  belongs_to :subproduct
end
