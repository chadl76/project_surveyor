class QuestionsController < ApplicationController
	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
	end


	private

	def question_params
		params.require(:question).permit(
			:title,
			:question_type,
			:required,
			:options_num,
			:options_attributes => [
				:id,
				:name,
				:response])
	end
end