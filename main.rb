

# - do not let them add the same answer if the eight ball already has that answer
# - ability to reset answers back to the original bank (hint: think arr.clone)
# - via easter egg question ("reset_answers")
# - ability to have eight ball print all answers
# - via easter egg question ("print_answers")
require 'Pry'
@answers = ["Sure Thang", "Not a Chance", "No Go", "I'll look into it", "Aww that's cute", "You Got This", "That's it"]

def eight_ball
    puts "Please enter a question for our Magic Eightball to answer."
    # love_array = []
    question = gets.strip
    # love_array << question
    # love_array.split(' ')
    # if love_array == "love"
    #     puts "Try Match.com"
    # else
    puts @answers.sample
    puts "Dou want to exit?"
    puts "y or n"
    quit = gets.strip
    case quit
    when "y"
        puts 'Thanks! Goodbye!'
        exit!(true)
    when "n"
        eight_ball
    else 
       puts "Add an answer to the magic 8-Ball"

        add_answer = gets.to_s
        @answers << add_answer
        eight_ball
    end
     
end

while true
eight_ball
end