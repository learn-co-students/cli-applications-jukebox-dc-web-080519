require('pry')
# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)

def songs 
  [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
  ]
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  i = 0
  songs.each do |song|
    i += 1
    puts "#{i}. #{song}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  song_name_or_num = gets.strip
  if song_name_or_num.length == 1
    number = song_name_or_num.to_i
    if !!songs[number - 1] 
      puts "Playing #{songs[number - 1]}"
    else
      puts "Invalid input, please try again"
    end
  else
    if songs.include?(song_name_or_num)
      puts "Playing #{songs.find do |str|
        songs.include?(str)
      end}"
    
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  puts "Please enter a command:"
  command = gets.chomp
  if command == "exit"
    exit_jukebox
  end
  if command == "list"
    list(songs)
  end
  if command == "help"
    help
  end
  if command == "play"
    play(songs)
  end
end
