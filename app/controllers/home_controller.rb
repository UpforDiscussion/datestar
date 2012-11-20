class HomeController < ApplicationController
	def index
		@user = User.new
		 respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end

	end

	def create
 		@user = User.new(params[:name])

		# user = User.find_by_name(params[:name])
		# if user && user.authenticate(params[:password])

		# else

		# end

	end
	def destroy

	end


end