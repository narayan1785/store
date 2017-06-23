class PensController < ApplicationController


  

  def new
  	@pen = Pen.new
  end

  def create
    @pen = Pen.new(pen_params)

    respond_to do |format|
      if @pen.save
        format.html { redirect_to home_index_path, notice: 'Pen was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

   private
   

    # Never trust parameters from the scary internet, only allow the white list through.
    def pen_params
      params.require(:pen).permit(:name, :price, :color, :status, :inward_date, :description)
    end


end
