require_relative "../config"

class CreateRatings < ActiveRecord::Migration
	def up
		create_table :ratings do |t|
			t.integer(:rating)
			t.integer(:tv_show_id)
			t.integer(:user_id)
		end
	end

	def down
		drop_table :ratings
	end
end

CreateRatings.migrate(:up)