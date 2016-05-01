class Admin::About < ActiveRecord::Base
	has_one :staff
	accepts_nested_attributes_for :staff, :update_only => true
end
