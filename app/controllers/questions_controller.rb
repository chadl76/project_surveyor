class QuestionsController < ApplicationController
	def new
#survey = Survey.find(params[:id])
		@question = Question.new(survey_id: params[:survey_id])
		#@survey = Survey.find(params[:id])
	end

	def create
		
		@question = Question.new(question_params)


		if @question.save
			flash[:success] = "Saved"
			redirect_to surveys_path
		else
			puts @question.errors.full_messages
		end
	end


	private

	def question_params
		params.require(:question).permit(
			:title,
			:question_type,
			:required,
			:options_num,
			:survey_id,
			:options_attributes => [
				:id,
				:name,
				:response],
			:survey_attributes => [
				:id,
				:title,
				:description,
				])
	end
end