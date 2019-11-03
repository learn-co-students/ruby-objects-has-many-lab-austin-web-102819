require "pry"
require_relative 'artist'

sage = Song.new("sage")
rivitz = Artist.new("Rivitz")
rivitz.add_new(sage)