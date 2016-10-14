class EducationDetailsController < ApplicationController
	def new
		@educationdetail=EducationDetail.new
	end
	def show
		@educationdetail=EducationDetail.find(params[:id])
	end
	def create
		@educationdetail=EducationDetail.new(education_detail_params)
		if @educationdetail.save
			redirect_to person_details_path
		else
			render action: "new"
		end
	end
	def edit
		@educationdetail=EducationDetail.find(params[:id])
	end
	def update
		@educationdetail=EducationDetail.find(params[:id])
		if @educationdetail.update_attributes(education_detail_params)
				redirect_to person_details_path
		else
			render action: "update"
		end
	end
	def destroy
		@educationdetail=EducationDetail.find(params[:id])
		if @educationdetail.delete
			redirect_to person_details_path
		else
			render action: "delete"
		end
	end
	private
	def education_detail_params
		params[:education_detail].permit(:person_detail_id,:institution_name,:board_or_university_name,:percentage_or_cgpa,:year_of_passing,:certificate_type_name)
	end
end