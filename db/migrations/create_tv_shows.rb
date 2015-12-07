require_relative "../config"

class CreateTvShows < ActiveRecord::Migration
	def up
		create_table :tv_shows do |t|
			t.string(:genre)
			t.string(:title)
			t.text(:info)
			t.text(:show_img_url)
		end
	end

	def down
		drop_table :tv_shows
	end
end

CreateTvShows.migrate(:up)