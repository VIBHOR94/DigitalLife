class Document < ActiveRecord::Base
	mount_uploader :picture ,ProfiepicUploader
end
