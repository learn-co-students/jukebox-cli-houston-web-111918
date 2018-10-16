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
  songs.each_with_index {|index, num| puts "#{num + 1}: #{index}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp

  if songs.include?(song)
    puts "Playing #{song}"
  else
    song_num = song.to_i
    if song_num < 1 || song_num > songs.length
      puts "Invalid input, please try again"
    else
      puts "Playing #{songs[song_num - 1]}"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts ""
  puts "Please enter a command: "
  choice = gets.chomp
  
  until choice == 'exit'
    case choice
    when 'help'
      help
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    else
      puts "Invalid input, please try again."
    end
    puts ""
    puts "Please enter a command: "
    choice = gets.chomp
  end
  exit_jukebox
end
