require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count 
        @@count 
    end

    def self.genres
         @@genres.uniq
    end

    def self.artists
         @@artists.uniq
    end

    # iterate over the `@@genres` array and populate a hash with the key/value pairs.     
    # check to see if the hash already contains a key of a particular genre. 
    # increment the value of that key by one, 
    # otherwise, create a new key/value pair.
    def self.genre_count
        genres_hash = {}
        @@genres.each do |genre_key|
            if genres_hash[genre_key]
                genres_hash[genre_key] += 1                
            else
               genres_hash[genre_key] = 1
            end     
        end
        genres_hash
    end

    # returns a hash of artists and the number of songs that have those artists
    def self.artist_count
        artists_hash = {}
        @@artists.each do |artist_key|
            if artists_hash[artist_key]
                artists_hash[artist_key] += 1                
            else
                artists_hash[artist_key] = 1
            end     
        end
        artists_hash
    end
end