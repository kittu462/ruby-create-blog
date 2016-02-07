class Post < ActiveRecord::Base
	validates_presence_of :title
	has_many :discussions,dependent: :destroy
end
