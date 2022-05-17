class Song
    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end

    def self.artist_count
        hash = {}
        @@artists.uniq.each do |artist|
            hash[artist] = @@artists.count artist
        end
        hash
    end

    def self.genre_count
        hash = {}
        @@genres.uniq.each do |genre|
            hash[genre] = @@genres.count genre
        end
        hash
    end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")


Song.new('Ponzona','Purple Kiss','K-pop')
Song.new('Zombie','Purple Kiss','K-pop')
Song.new('Pretty Psycho','Purple Kiss','K-pop')
Song.new('Rising Hope','LiSA','J-pop')
Song.new('Winter Bells','Mai Kuraki','J-pop')

p Song.genres
p Song.artists
p Song.artist_count
