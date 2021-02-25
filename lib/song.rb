require 'pry'

class Song
    attr_accessor :song, :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @artist = artist
        save
      end
    
      def add_song(song)
        song.artist= self
      end

      def save
        @@all << self
      end

      def self.all
        @@all
      end

      def artist_name
       self.artist.name if artist
      end
end