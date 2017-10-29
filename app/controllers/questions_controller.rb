class QuestionsController < ApplicationController
	def index
		@questions = Question.all
	end

	def new
		@question = Question.new(survey_id: params[:survey_id])
		@survey_options = @question.survey.options
		@options_num = @survey_options.last.options_num
		
	end

	def create
		@question = Question.new(question_params)
		  if @question.save
			flash[:success] = "Saved"
			redirect_to survey_question_path(@question.id, @survey.id)
		  else
			redirect_to :new
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
			:options,
			:option,
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