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
			redirect_to 
	end

	private

	def survey_params
		params.require(:survey).permit(
			:title,
			:description,
			:count,
			:question_id,
			:question_types_attributes => [
				:id,
				:question_type,
				:question_id,
				])
	end
end
