class ExpendituresController < ApplicationController
	def new
		@expenditure=Expenditure.new
	end
	def show
		@expenditure=Expenditure.find(params[:id])
	end
	def create
		@expenditure=Expenditure.new(expenditure_params)
		if @expenditure.save
			redirect_to person_details_path
		else
			render action: "new"
		end
	end
	def edit
		@expenditure=Expenditure.find(params[:id])
	end
	def update
		@expenditure=Expenditure.find(params[:id])
		if @expenditure.update_attributes(expenditure_params)
				redirect_to person_details_path
		else
			render action: "update"
		end
	end
	def destroy
		@expenditure=Expenditure.find(params[:id])
		if @expenditure.delete
			redirect_to person_details_path
		else
			render action: "delete"
		end
	end
	private
	def expenditure_params
		params[:expenditure].permit(:person_detail_id,:type_id,:payment_method,:amount,:date)
	end
end
