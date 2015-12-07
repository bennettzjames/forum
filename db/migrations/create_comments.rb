require_relative "../config"

class CreateComments < ActiveRecord::Migration
	def up
		create_table :comments do |t|
			t.text(:comment)
			t.integer(:user_id)
			t.integer(:tv_show_id)
		end
	end

	def down
		drop_table :comments
	end
end

CreateComments.migrate(:up)