#create a store that holds video games
#have the store contain video games from 4 different companies
#each company has 2 games in the store
# each video game has a title
# Return a list of existing inventory items and allow use to update those items
# Allow the user to add new items to the inventory
# The list should reflect the new items
# Allow the user to delete items




store = {
  "mario" => 1,
  "metroid" => 2,
  "sonic" => 3,
  "galaga" => 4
}

# def get_item(var1,var2)
#   return store[var1] = var2
# end




puts "\n\n\n\nWelcome to the store!!\n\nWe have a very limited number of titles.\n\nI will actually allow you to add a game title and completely delete game title from my humble, crappy, store."
puts "\n\nBut first...\n\n"
puts "We currently have total of #{store.count} video games in the store.\n\n"
puts "They are as follows:\n\n"
store.each_pair {|key, value| puts "#{key} - #{value}" }


# puts store.keys

#test loop to figure out the comparison piece
  #CANT FIGURE THIS PART OUT.
  #HOW DO WE COMPARE THE ANSWER AGAINST ALL HASH VALUE ENTRIES AT ONCE?
# puts "add a title"
# key = gets.chomp.downcase
#
# until key == store
#   puts "Please select a valid game title."
#   key = gets.chomp.downcase
# end

play = 1
while play

  #add a title
  puts "What is the name of the video game would you like to place in the store?\n"
  new_game = gets.chomp.downcase
  puts "How many of that game?\n"
  quantity = gets.chomp.to_i
  store[new_game] = quantity
  store.each_pair {|key, value| puts "#{key} - #{value}" }# for onscreen confirmation
  # end of add title

    def check_answer(user_selection)
      item_keys = store.keys
      user_selection = gets.chomp

      until item_keys.include?(user_selection) do
        puts "please enter a valid item"
        user_selection = gets.chomp
      end
    end

  # # edit a title
  puts "Let's change a name of a game title eh? Which game gets the change?\n"
  old_name = gets.chomp.downcase
  puts "What should its new name be?\n"
  new_name = gets.chomp.downcase
  store[new_name] = store.delete(old_name)
  store.each {|key, value| puts "#{key} - #{value}" }# for onscreen confirmation
  # # end of edit a title


  # # delete a title
  puts "Let's remove a game title? Which game gets the boot?\n"
  remove_game = gets.chomp.downcase
  store.delete(remove_game)
  store.each {|key, value| puts "#{key} - #{value}" }# for onscreen confirmation
  # # end of delete a title


  # until x == ("yes"||"no")
  #   puts "Please type \"yes\" or \"no\""
  #   x = gets.chomp.downcase
  # end

  puts "Would you like to add, edit or delete some more game titles?\n\n"
  play = gets.chomp.downcase
  if play == "yes"
    play = 1
    puts "Sweet! One more time around!\n\n"
  else
    play = 2
    puts "\n\nBye Felicia."
    break
  end

end



















# for i in (0..store.count)
#   puts i
# end

# for each store |i|
#
# store.fetch(key)



# x = 0
# while x
#   puts "would you like to add a game?"
#   answer = gets.chomp.downcase
#   until answer == ('yes' || 'no')
#     puts 'Please answer /"yes/" or /"no/"'
#     answer = gets.chomp.downcase
#   end
#   if answer == 'yes'
#     puts "type the game title"
#     new_game = gets.chomp
#     puts "type the quantity"
#     quantity = gets.chomp.to_i
#     store[:new_game] = 'quantity'
#       puts "ok, so we now have #{store.count} games in the store."
#   else
#     puts "ok then"
#     x = x + 1
#   end
# end
