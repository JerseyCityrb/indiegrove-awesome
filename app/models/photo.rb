class Photo < ActiveRecord::Base
	attr_accessible :attachment
	has_attached_file :attachment, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
