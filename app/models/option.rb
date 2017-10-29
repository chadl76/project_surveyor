class Option < ApplicationRecord
	#belongs_to :question
	#belongs_to :survey
	has_many :questions
end
