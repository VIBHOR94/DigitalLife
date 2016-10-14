class DocumentsController < ApplicationController
	def new
		@document=Document.new
	end
	def show
		@document=Document.find(params[:id])
	end
	def create
		@document=Document.new(document_params)
		if @document.save
			redirect_to documents_path,notice: "Successully created"
		else
			render action: "new"
		end
	end
	def edit
		@document=Document.find(params[:id])
	end
	def update
		@document=Document.find(params[:id])
		if @document.update_attributes(document_params)
				redirect_to documents_path,notice: "Successully updated"
		else
			render action: "update"
		end
	end
	def destroy
		@document=Document.find(params[:id])
		if @document.delete
			redirect_to documents_path,notice: "Successully deleted"
		else
			render action: "delete"
		end
	end
	private
	def document_params
		params[:document].permit(:person_detail_id,:title,:category_id,:picture)
	end
end
