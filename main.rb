
require 'Pry'
@answers = ["Sure Thang", "Not a Chance", "No Go", "I'll look into it", "Aww that's cute", "You Got This", "That's it"]

def eight_ball
    puts "Please enter a question for our Magic Eightball to answer."
   
    question = gets.strip.downcase
    if question == "print"
        puts @answers
        eight_ball
    elsif question == "reset"
        @answers.slice!(7..99)
        puts " "
        puts @answers
        eight_ball
    elsif question == "will i find love?"
        puts " "
        puts "You should check out Match.com or Tinder. I hear that works."
        puts " "
        eight_ball
    end
   
    puts @answers.sample
    puts " "
    puts "Dou want to exit?"
    puts " "
    puts "y or n"
    quit = gets.strip
    case quit
    when "y"
        puts 'Thanks! Goodbye!'
        exit!(true)
    when "n"
        eight_ball
    else 
       puts " "
        puts "Add an answer to the magic 8-Ball"

        add_answer = gets.strip
        if @answers.include?(add_answer)
            puts "I'm sorry, that's already in the bank. Please try to add another answer:"
            puts "Add an answer to the magic 8-ball"
            try_again = gets.strip
        else
            @answers << add_answer
        end
        
    end
     
end

while true
eight_ball
end