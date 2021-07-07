# Add your code here
require 'pry'

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
    songs.each_with_index do |song, index|
        puts "#{index + 1}. #{song}"
    end
end

def play(songs)
    puts "Please enter a song name or number:"
    input = gets.chomp
    if input.to_i >= 1 && input.to_i <= 9
        puts "Playing #{songs[input.to_i - 1]}"
    elsif songs.include?(input)
        puts "Playing #{input}"
    else
        puts "Invalid input, please try again"
    end
end

# def play(songs)
#     puts "Please enter a song name or number:"
#     input = gets.chomp
#     songs.each_with_index do |index, song|
#         if input == song
#             puts "Playing #{song}"
#         elsif input.to_i == index
#             puts "Playing #{song}"
#         else
#             puts "Invalid input, please try again"
#         end
#     end
# end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    help
    while true do
        puts "Please enter a command:"
        runInput = gets.chomp
        if runInput == "exit"
            exit_jukebox
            break
        elsif runInput == "help"
            help
        elsif runInput == "list"
            list(songs)
        elsif runInput == "play"
            play(songs)
        else
            "Invalid response"
        end
    end
end


