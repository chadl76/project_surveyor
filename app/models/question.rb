class Question < ApplicationRecord
	belongs_to :survey
	has_many :options 
	has_many :question_types

	accepts_nested_attributes_for :options, :question_types, :survey
end
