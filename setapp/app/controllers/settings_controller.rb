class SettingsController < ApplicationController
	def index
		@setting = Setting.all
	end
	
	def new
		@setting = Setting.new
	end
	def create
		@test = Setting.new(setting_params)
		@test.save
		redirect_to "/"
	end	
	def edit
		@setting = Setting.find(params[:id])
#		binding.pry
		if @setting.value.to_f != 0.0 && @setting.value.include?(".")
			params[:data_type] = "Float"
		elsif @setting.value.to_i != 0
			params[:data_type] = "Integer"
		elsif @setting.value == "true" || @setting.value == "false"
			params[:data_type] = "Boolean"
		else 
			params[:data_type] = "String"
		end			
					
	end	
	def update
		@setting = Setting.find(params[:id])
		@setting.update(setting_params)
		redirect_to "/"
	end	
		
	private
  
  def setting_params
    params.require(:setting).permit(:name, :value)
  end
end
