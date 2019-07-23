require 'pry'
# Add your code here

songs = [
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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index  do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs.each_with_index do |song, index|
    if input == song
      puts "Playing #{song}"
      break
    end
    if input.to_i == (index.to_i + 1)
      puts "Playing #{song}"
      break
    end
  end
  puts "Invalid input, please try again"
end  

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  loop do
    if input == "help"
      help
    end
    if input == "list"
      list(songs)
    end 
    if input == "play"
      play(songs)
    end
    if input == "exit"
      exit_jukebox
      break
    end  
    puts "Please enter a command:"
    input = gets.chomp
  end
end