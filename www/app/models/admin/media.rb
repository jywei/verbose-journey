class Admin::Media < ActiveRecord::Base
  mount_uploader :file_name, MediaUploader
end
