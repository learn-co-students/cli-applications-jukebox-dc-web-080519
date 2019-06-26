def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  # initialize error message, changed later w/ valid input
  rtn = "Invalid input, please try again"

  songs.each_with_index do |song, index|
    # song title
    if input == song
      rtn = "Playing #{song}"
    # song number
    elsif input.to_i == index + 1
      rtn = "Playing #{song}"
    end
  end

  puts rtn
end

def list(songs)
  songs.each_with_index do |song_title, index|
    puts "#{index + 1}. #{song_title}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  # welcome user and get input
  puts "Welcome to Jukebox!"
  help
  puts "Please enter a command:"
  input = gets.chomp
  # if input is 'exit', break loop and run #exit_jukebox
  while input.downcase != "exit"
    # otherwise check if input is valid command & run appropriate method
    if input.downcase == "help"
      help
    elsif input.downcase == "list"
      list(songs)
    elsif input.downcase == "play"
      play(songs)
    else
      puts "Please enter a valid command: "
    end
    # get new user input at end of loop
    input = gets.chomp
  end
  exit_jukebox
end
