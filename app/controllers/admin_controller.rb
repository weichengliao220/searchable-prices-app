class AdminController < ApplicationController
  def import
    if request.post?
      file = params[:file]
      if file
        ExcelImporter.new(file.path).import
        redirect_to root_path, notice "Data imported successfully"
      else
        render :import
      end
    end
  end
end
