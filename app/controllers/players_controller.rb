class PlayersController < ApplicationController
	def index
		@players =Player.all
	end

	def new
		@player = Player.new
	end

	def create
		player = Player.new(player_params)		
		if player.save
			redirect_to  :root#{}"/players"

		else
			flash[:errors] = player.errors.full_messages
			redirect_to  :back #{}"/players/new" 
		end
	end

	def show
		@player = Player.find(params[:id])  #this will show at the show page
	end

	def edit
		@player = Player.find(params[:id]) #this will show at the edit page
	end

	def update
		player = Player.find(params[:id])
		if player.update(player_params)
			redirect_to :root #{}"/players"
		else
			flash[:errors] = player.errors.full_messages
			 redirect_to :back#{}"/players/#{player.id}.edit"
			# redirect_to player_edit__path(player.id)
		end
	end

	def destroy
		player = Player.find(params[:id])
		player.destroy
		redirect_to :root
	end

private
	def player_params
		params.require(:player).permit(:first_name, :last_name)
	end


end
