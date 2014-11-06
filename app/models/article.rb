class Article < ActiveRecord::Base

	has_attached_file :photo,
					  :url => "app/assets/images/:id/:basename.:extension",
					  :path => ":rails_root/app/assets/images/:id/:basename.:extension"

	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
