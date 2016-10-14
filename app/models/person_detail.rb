class PersonDetail < ActiveRecord::Base
	validates_uniqueness_of :user_id
	mount_uploader :profilepic ,ProfiepicUploader
end
