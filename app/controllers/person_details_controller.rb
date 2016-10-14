class PersonDetailsController < ApplicationController
	before_action :authenticate_user!
	def new
		@persondetail=PersonDetail.new
	end
	def show
		@persondetail=PersonDetail.find(params[:id])
	end
	def create
		@persondetail=PersonDetail.new(person_detail_params)
		if @persondetail.save
			redirect_to person_details_path
		else
			render action: "new"
		end
	end
	def edit
		@persondetail=PersonDetail.find(params[:id])
	end
	def update
		@persondetail=PersonDetail.find(params[:id])
		if @persondetail.update_attributes(person_detail_params)
				redirect_to person_details_path
		else
			render action: "update"
		end
	end
	private
	def person_detail_params
		params[:person_detail].permit(:name,:sex,:date_of_birth,:address,:contact_number,:country,:user_id,:profilepic)
	end
end
