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
  puts "I accept the following commands:
  - help: displays this help message
  - list: displays a list of songs you can play
  - play: lets you choose a song to play
  - exit: exits this program"
end


def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if (input.to_i > songs.length || input.to_i < 1) && !songs.include?(input)
    puts "Invalid input, please try again"
  else
    if input.to_i > 0
      puts "Playing #{songs[input.to_i - 1]}"
    else
      puts "Playing #{input}"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help 
  puts "Please enter a command:"
  input = gets.chomp
  unless input == "exit"
    if input == "list"
      list
    elsif input == "play"
      play
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
      return
    end
  end
  exit_jukebox
end