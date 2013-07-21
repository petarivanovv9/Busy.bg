class ItsController < ApplicationController
	def index
		@its=User.where(role_id: Role.find_by_name('IT').id)
	end
end
