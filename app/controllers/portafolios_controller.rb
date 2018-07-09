class PortafoliosController < ApplicationController
  layout 'portafolio'
	def index
	@portafolio = Portafolio.all
	end

	def new
		@portafolio = Portafolio.new
    3.times { @portafolio.constructions.build }
	end

	def create 
	 @portafolio = Portafolio.new(params.require(:portafolio).permit(:title, :body, :subtitle, constructions_attributes: [:name]))

    respond_to do |format|
      if @portafolio.save
        format.html { redirect_to portafolios_path, notice: 'Your portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
   end

   	def edit 
   		@portafolio = Portafolio.find(params[:id])
   	end

   	def update
   	  @portafolio = Portafolio.find(params[:id])
      respond_to do |format|
      if @portafolio.update(params.require(:portafolio).permit(:title, :body, :subtitle))
        format.html { redirect_to portafolios_path, notice: 'Your portafolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  	def show
  		@portafolio = Portafolio.find(params[:id])
  	end

  		def destroy
  			@portafolio = Portafolio.find(params[:id])
  			 @portafolio.destroy
    	     respond_to do |format|
             format.html { redirect_to portafolios_url, notice: 'portfolio was successfully removed.' }
   			end
  		end	 

end









