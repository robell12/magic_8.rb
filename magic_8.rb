# Get name
# options menu for Shaking 8 ball
# computer ouputs random answer out of hashes
# Another options after output for quit, roll again, add more answers to hashes
# method for add more answers that doesn't accept same answers
# ability to reset answers to original hash
# puts all answers so that added answers are printed also

puts "---Welcome to the Magic 8 Ball---"
puts "\nWhat is your name kindly person?\n"
@name = gets.strip


@his = []
@ans = [
  "Now Sure #@name.",
  "That is a silly question #@name!",
  "It is certain #@name.",
  'You would be better off going to medical school.',
  "Doesn't look good",
  "Cannot predict now #@name.",
  "You're funny",
  'Not in a million years.'
]

def options
  option_1 = "\n1 ) Shake a ball" 
  puts option_1
  option_1 = option_1.downcase.split
  option_2 = "2 ) Add more answers"
  puts option_2
  option_2 = option_2.downcase.split
  option_3 = "3 ) Print all answers"
  puts option_3
  option_3 = option_3.downcase.split
  option_4 = "4 ) Veiw History"
  puts option_4
  option_4 = option_4.downcase.split
  option_5 = "5 ) Reset"
  puts option_5
  option_5 = option_5.downcase.split
  option_6 = "6 ) Quit\n"
  puts option_6
  option_6 = option_6.downcase.split
  choice = gets.downcase.strip
  if option_1.include?(choice)
    shake_ball
  elsif option_2.include?(choice)
    add_more
  elsif option_3.include?(choice)
    print_all
  elsif option_4.include?(choice)
    history
  elsif option_5.include?(choice)
    reset
  elsif option_6.include?(choice)
    exit
  else
    puts "Not a Valid input"
  options
  end
         
end

def shake_ball
  puts "\nWhat is your question\n"
  question = gets.strip
  @his << question
  # def ans
  #   puts 
  # end
  ran_ans = "#{@ans.sample}"
  puts ran_ans
  @his << ran_ans
  options
end

def print_all 
  puts @ans
  options
end

def add_more
  puts "What answer would you like to add?"
  new_ans = gets.strip
  if @ans.include?(new_ans)
    puts "That answer is already there"
  else
  @ans << new_ans
  puts "\n'#{new_ans}' was added successfully!\n"
  end
  option_add_1 = "1 ) Add another answer"
  puts option_add_1
  option_add_1 = option_add_1.downcase.split
  option_add_2 = "2 ) Ask question"
  puts option_add_2
  option_add_2 = option_add_2.downcase.split
  option_add_3 = "3 ) Go to main menu"
  puts option_add_3
  option_add_3 = option_add_3.downcase.split
  choice_two = gets.downcase.strip
  if option_add_1.include?(choice_two)
    add_more
  elsif option_add_2.include?(choice_two)
    shake_ball
  elsif option_add_3.include?(choice_two)
    options
  else
    puts "Not a valid selection"
    options
  end
end

def history
    @his.each_with_index do |op, i|
  puts if i % 2 == 0
  print "  " if i % 1 == 0
  print "#{op}"
    end
  options
end

def reset
  delete_ans = @ans.length - 8
  @ans.pop(delete_ans)
  puts @ans
  options
end

options

while true
  choice
end
