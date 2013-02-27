class HelloController < ApplicationController
	def index
		@message = "Hello World."
		
	end	

	def add
		@first = (params[:id]).to_i
		@second = (params[:id2]).to_i
		@sum =  @first + @second
		

		
	end
end
