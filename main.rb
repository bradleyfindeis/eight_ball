

# - do not let them add the same answer if the eight ball already has that answer
# - ability to reset answers back to the original bank (hint: think arr.clone)
# - via easter egg question ("reset_answers")

# - Make Print function cleaner
require 'Pry'
@answers = ["Sure Thang", "Not a Chance", "No Go", "I'll look into it", "Aww that's cute", "You Got This", "That's it"]
@new_answers = @answers.clone
def eight_ball
    puts "Please enter a question for our Magic Eightball to answer."
    # love_array = []
    question = gets.strip
    if question == "print"
        puts @answers
        exit 
    elsif question == "reset"
        @new_answers.delete_at(7)
        puts @new_answers
    end
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
        # if add_answer == @answers [1..100]
        #     puts "We already have that answer. Please try again:"
            
    end
     
end

while true
eight_ball
end