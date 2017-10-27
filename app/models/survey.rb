class Survey < ApplicationRecord
	has_many :questions
	has_many :options
	has_many :question_types

	accepts_nested_attributes_for :options, :questions, :question_types
end
