require_relative "../config"

class CreateLinks < ActiveRecord::Migration
	def up
		create_table :links do |t|
			t.integer(:tv_show_id)
			t.integer(:user_id)
			t.text(:link)
			t.boolean(:subscription)
		end
	end

	def down
		drop_table :links
	end
end

CreateLinks.migrate(up)