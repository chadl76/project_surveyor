class OptionsController < ApplicationController
	#before_action :get_survey
	def new
		@option = Option.new(survey_id: params[:survey_id])
	end

	def create
		@option = Option.new(options_params)
		if @option.save
			redirect_to new_survey_question_path(@option.survey_id)
		end
	end

		private

		def options_params
			params.require(:option).permit(
				:name,
				:question_id,
				:response,
				:user_answer,
				:survey_id,
				:options_num,
				:surveys_attributes =>[
					:id]
				)
		end

		


end
