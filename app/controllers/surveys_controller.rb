class SurveysController < ApplicationController
	def index
		@surveys = Survey.all
	end

	def new
		@survey = Survey.new
	end

	private

	def survey_params
		params.require(:survey).permit(
			:title,
			:description,
			:count,
			:question_id)
	end
end
