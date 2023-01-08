# frozen_string_literal: true

# contains the rules and intro
module Rules
  def intro
    puts '===================================='
    puts 'Welcome to a game of chess'
    puts '===================================='
  end

  def instructions
    puts "The basic rules off chess apply\n
To select a piece, input its coordinates without spacing eg. a1, e2, b3, h4...
Then input the coordinates of the square you want to move it to\n\n"
  end
end
