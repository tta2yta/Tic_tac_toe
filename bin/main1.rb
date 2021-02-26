#!/usr/bin/env ruby
puts 'Welcome to Tic Tac Toa game'

puts '|1| |2| |3|'
puts '------------'
puts '|4| |5| |6|'
puts '------------'
puts '|7| |8| |9|'

names = []
sym = %w[X Y]
#-------Player 1 Information------
puts 'Player 1 Enter Your Name'
names.push(gets.chop.strip)
puts "Player One Your Name is #{names[0]}"
puts 'Player One Select Symbol X or Y'
sym_p1 = gets.chop.strip
unless sym.include?(sym_p1)
  loop do
    puts 'Please Player One Select Symbol X or Y Choices Only'
    sym_p1 = gets.chop.strip
    if sym.include?(sym_p1)
      puts "Player One Your  Selected Symbol is #{sym_p1}"
      break
    end
  end
end

#-------Player 2 Information------
puts 'Player 2 Enter Your Name'
names.push(gets.chop.strip)
puts "Player two Your Name is #{names[1]}"
puts "#{names[1]} Your Symbol is #{sym_p1 == 'X' ? 'Y' : 'X'}"
puts "#{names[0]} will play with #{names[1]}"

pos = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def check_winner?(pos)
  return true if pos[0, 3].uniq.length == 1
  return true if pos[3, 3].uniq.length == 1
  return true if pos[6, 3].uniq.length == 1
end

def check_pos(pos, name, sym_p1)
  loop do
    if pos.all? { |x| %w[X Y].include?(x) }
      puts 'It is a Tie'
      break
    end
    puts "#{name}, It is Your Turn,  Please Select Position"
    pos_move = gets.chop.strip
    if pos.include?(pos_move.to_i)
      pos[pos_move.to_i - 1] = sym_p1
      puts "#{pos[0]} | #{pos[1]} | #{pos[2]}"
      puts '---+---+---'
      puts "#{pos[3]} | #{pos[4]} | #{pos[5]}"
      puts '---+---+---'
      puts "#{pos[6]} | #{pos[7]} | #{pos[8]}"
      if check_winner?(pos)
        puts "#{name} Winns !!!!"
        exit(0)
      end
      break

    else
      puts "Position Already Taken or InCorrect Position, #{name} Please Enter Another Position"
    end
  end
end

loop do
  #----Player 1 Position Selection----

  check_pos(pos, names[0], sym_p1)

  if pos.all? { |x| %w[X Y].include?(x) }
    puts 'It is a Tie'
    break
  end

  #----Player 2 Position Selection----
  check_pos(pos, names[1], sym_p1 == 'X' ? 'Y' : 'X')
end
