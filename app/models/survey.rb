class Survey < ApplicationRecord
	has_many :questions
	has_many :options

	accepts_nested_attributes_for :options, :questions
end
