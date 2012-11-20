class SessionController < ApplicationController
	def new
	end
	def create
		user = User.find_by_name(params[:name])
		if user && user.authenticate(params[:password])

		else
		end
	end
	def destroy
	end
end