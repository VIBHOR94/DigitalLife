class TypesController < ApplicationController
	def new
		@type=Type.new
	end
	def show
		@type=Type.find(params[:id])
	end
	def create
		@type=Type.new(type_params)
		if @type.save
			redirect_to types_path
		else
			render action: "new"
		end
	end
	def edit
		@type=Type.find(params[:id])
	end
	def update
		@type=Type.find(params[:id])
		if @type.update_attributes(type_params)
				redirect_to type_path
		else
			render action: "update"
		end
	end
	private
	def type_params
		params[:type].permit(:name)
	end
end