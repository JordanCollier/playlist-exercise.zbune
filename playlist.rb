require 'pry-byebug'
require_relative 'song'
class Playlist

  attr_accessor :name, :playlist


  def initialize(name)
    @name = name
    @playlist = []
    @current_song = nil
    @song_number = 0
  end

  def is_empty?
    if @playlist.empty?
      true
    else
      false
    end
  end

  def add_song(song)
    @playlist << song
  end

  def songs
    @playlist
  end

  def remove_song(song)
    @playlist.delete(song)
  end

  def song_names
    @playlist.map do |song|
      song.name
    end
  end

  def swap(song1, song2)
    @playlist[@playlist.index(song1)], @playlist[@playlist.index(song2)] = @playlist[@playlist.index(song2)], @playlist[@playlist.index(song1)]
  end

  def total_length
    @playlist.inject(0) do |sum, song|
      sum += song.length
    end
  end

  def now_playing
    @current_song
  end

  def play
    @current_song = @playlist[@song_number]
  end

  def next
    @song_number += 1
    self.play
  end


end
