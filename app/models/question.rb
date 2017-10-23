class Question < ApplicationRecord
	belongs_to :survey
	has_many :options 
	has_many :question_types
end
