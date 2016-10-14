class IncomesController < ApplicationController
	def new
		@income=Income.new
	end
	def show
		@income=Income.find(params[:id])
	end
	def create
		@income=Income.new(income_params)
		if @income.save
			redirect_to person_details_path
		else
			render action: "new"
		end
	end
	def edit
		@income=Income.find(params[:id])
	end
	def update
		@income=Income.find(params[:id])
		if @income.update_attributes(income_params)
				redirect_to person_details_path
		else
			render action: "update"
		end
	end
	def destroy
		@income=Income.find(params[:id])
		if @income.delete
			redirect_to person_details_path
		else
			render action: "delete"
		end
	end
	private
	def income_params
		params[:income].permit(:person_detail_id,:type_id,:recieved_in,:amount,:date)
	end
end
