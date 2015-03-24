class Playlist
  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def is_empty?
    @songs.empty?
  end

  def add_song(song)
    @songs << song
  end

  def remove_song(song)
    @songs.delete(song)
  end

  def song_names
    @songs.map(&:name)
  end

  def swap(song1, song2)
    index1 = @songs.index(song1)
    index2 = @songs.index(song2)
    @songs[index1], @songs[index2] = song2, song1
  end

  def total_length
    @songs.reduce(0) {|memo, song| memo + song.length}
  end

  def play
    @playing_index = 0
  end

  def now_playing
    @songs[@playing_index] if @playing_index
  end

  def next
    @playing_index += 1
  end

end

#-----------------------MY SOLUTION----------------------------

# require 'pry-byebug'
# require_relative 'song'
# class Playlist
#
#   attr_accessor :name, :playlist
#
#
#   def initialize(name)
#     @name = name
#     @playlist = []
#     @current_song = nil
#     @song_number = 0
#   end
#
#   def is_empty?
#     if @playlist.empty?
#       true
#     else
#       false
#     end
#   end
#
#   def add_song(song)
#     @playlist << song
#   end
#
#   def songs
#     @playlist
#   end
#
#   def remove_song(song)
#     @playlist.delete(song)
#   end
#
#   def song_names
#     @playlist.map do |song|
#       song.name
#     end
#   end
#
#   def swap(song1, song2)
#     @playlist[@playlist.index(song1)], @playlist[@playlist.index(song2)] = @playlist[@playlist.index(song2)], @playlist[@playlist.index(song1)]
#   end
#
#   def total_length
#     @playlist.inject(0) do |sum, song|
#       sum += song.length
#     end
#   end
#
#   def now_playing
#     @current_song
#   end
#
#   def play
#     @current_song = @playlist[@song_number]
#   end
#
#   def next
#     @song_number += 1
#     self.play
#   end
#
#
# end
