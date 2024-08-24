resource "spotify_playlist" "OneD" {
  name = "OneD"
  tracks = ["6Vh03bkEfXqekWp7Y1UBRb","5G2c6FsfTzgYUzageCmfXY","6M31fPFCYB8Job3MCjjrDV"]
}

data "spotify_search_track" "name" {
  artist = "Taylor Swift"  
      
}

resource "spotify_playlist" "Taylor" {
  name = "Swifty"
  tracks = [data.spotify_search_track.name.tracks[0].id,data.spotify_search_track.name.tracks[4].id]
}