require 'pry'

class Album

  def initialize(id, album_name, artists)
    @id = id
    @artists = artists
    @album_name = album_name
    @tracks = []
  end

  def tracks
    @tracks
  end

  def track_list
    track_list = []
    tracks.each do |track|
      track_list << track.title
    end
    track_list
  end

  def duration_min
    duration_min = 0.00
    tracks.each do |info|
      @duration_ms = info.duration_ms
      duration_min += @duration_ms.to_f / 60000
    end
    duration_min.round(2)
  end

  def summary
    puts "Name: #{@album_name}"
    puts "Artist(s): #{@artists}"
    puts "Duration (min): #{duration_min}"
    puts "Tracks:"
    track_list.each do |name|
      puts name
    end
    puts
  end

  attr_reader :id, :artists, :title
end
