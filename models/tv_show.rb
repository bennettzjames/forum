class TvShow < ActiveRecord::Base
	belongs_to :genre
	has_many :links
	has_many :comments
end