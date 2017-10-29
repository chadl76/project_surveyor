class SurveysController < ApplicationController
	def index
		@surveys = Survey.all
	end

	def new
		@survey = Survey.new
	end

	def create
		@survey = Survey.new(survey_params)
		  if @survey.save
			flash[:success] = "Survey 1"
			redirect_to new_survey_option_path(@survey)
		  else 
		  	redirect_to :new
		end

	end

	private

	def survey_params
		params.require(:survey).permit(
			:title,
			:description,
			:count,
			:question_id,
			:question_type_attributes => [
				:id,
				:question_type
				])
	end
end
