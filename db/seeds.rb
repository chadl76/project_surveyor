# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying old records"

Option.destroy_all
Survey.destroy_all
Question.destroy_all
QuestionType.destroy_all

puts "Old records destroyed"



QUESTION_TYPE = ["Mutliple Choice", "Single"]
MULTIPLIER = 10

def generate_question_types(q_type)
	#binding.pry
	qt = QuestionType.new({:question_type => q_type})
	qt[:question_id] = Question.pluck(:id).sample
	#qt[:question_type] = q_type
	#binding.pry
	qt.save
end

def generate_surveys
	s = Survey.new
	s[:title] = Faker::Lorem.word.upcase
	s[:description] = Faker::Lorem.sentence
	s[:question_id] = Question.pluck(:id).sample

	s.save
end

def generate_questions
	q = Question.new
	q[:title] = Faker::Lorem.sentence
	q[:question_type] = QUESTION_TYPE.sample
	q[:required] = Faker::Boolean.boolean
	q[:survey_id] = Survey.pluck(:id).sample
	q[:options_num] = Faker::Number.between(1,5)
	q[:question_type_id] = QuestionType.pluck(:id).sample
	q.save

	generate_options(q[:id], q[:options_num])
end


def generate_options(question_id, num)
	#q = Question.all
	#binding.pry
	num.times do
	  o = Option.new
	  o[:name] = Faker::Lorem.word
	  o[:question_id] = question_id
	  o[:response] = Faker::Lorem.word
	  o[:user_answer] = Faker::Lorem.word
	
	  o.save
	  #binding.pry
    end
end

MULTIPLIER.times { generate_surveys }
puts "Surveys created"



MULTIPLIER.times { generate_questions }
puts "Questions created"

QUESTION_TYPE.each  { |q_type| generate_question_types(q_type) }
puts "Question types created"

#MULTIPLIER.times { generate_options }
#puts "Options created"


