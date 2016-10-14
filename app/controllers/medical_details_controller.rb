class MedicalDetailsController < ApplicationController
	def new
		@medicaldetail=MedicalDetail.new
	end
	def show
		@medicaldetail=MedicalDetail.find(params[:id])
	end
	def create
		@medicaldetail=MedicalDetail.new(medical_detail_params)
		if @medicaldetail.save
			redirect_to person_details_path
		else
			render action: "new"
		end
	end
	def edit
		@medicaldetail=MedicalDetail.find(params[:id])
	end
	def update
		@medicaldetail=MedicalDetail.find(params[:id])
		if @medicaldetail.update_attributes(medical_detail_params)
				redirect_to person_details_path
		else
			render action: "update"
		end
	end
	private
	def medical_detail_params
		params[:medical_detail].permit(:person_detail_id,:blood_group,:family_doctor_name,:family_doctor_number)
	end
end
