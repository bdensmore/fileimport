class HomeController < ApplicationController
  
  def index
  	@file_import = FileImport.new
  end

  def upload_file
  	@file_import = FileImport.new params[:file_import]
		file_info = params[:file_import][:name]
		unless file_info.nil?
			@file_import.name = file_info.original_filename
			@file_import.file_type = file_info.content_type
		end
  	if @file_import.save			
  		redirect_to root_path, notice: "Successfully uploaded file"
  	else
  		# binding.pry
  		redirect_to root_path, notice: @file_import.errors.full_messages.first
  	end
  end
end
