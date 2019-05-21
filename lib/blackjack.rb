def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  number = rand(2..10)
  return number
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  number_1 = deal_card
  number_2 = deal_card
  card_total = number_1 + number_2
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  answer = get_user_input

  case answer
  when 's'
    hit?(card_total)
    return card_total
  when 'h'
    number = deal_card
    card_total+=number
    return card_total
  else
    invalid_command
    hit?(card_total)
  end

end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  while card_total < 21
    hit?(card_total)
  end
end_game(card_total)
end
