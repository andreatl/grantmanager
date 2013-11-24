class GrantsController < ApplicationController
	def index
		@grants = Grant.all
	end

	def new
		@grant = Grant.new
	end

	def create
		@grant = Grant.new
		@grant.update_attributes(params[:grant].permit(:title,:organization,:value, :duedate))
		
		if @grant.save
			redirect_to grants_url
		else
			render action: "new"
		end
	end

	def edit
		@grant = Grant.find(params[:id])
	end

	def update
		@grant = Grant.find(params[:id])
		if @grant.update_attributes(params[:grant].permit(:title,:organization,:value, :duedate))
			redirect_to grants_path
		else
			render action: "edit"
		end
	end

	def show
		@grant = Grant.find(params[:id])
	end

	def destroy
		@grant = Grant.find(params[:id])
		@grant.destroy
		redirect_to grants_url
	end
end
