1. Desribe the problem.
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface

* MusicTracker

* 1. initalize()
# create an array to store strings

* 2. add(song)
# song is a string representing the song title

* 3. view_songs()
# returns an array of all songs


3. Create examples as tests
* 1. viewing an empty list
music_tracker = MusicTracker.new()
music_tracker.view_songs() => []

* 2. viewing a list containing 1 song
music_tracker = MusicTracker.new()
music_tracker.add("song name")
music_tracker.view_songs => ["song name"]

* 3. viewing a list containing 3 songs
music_tracker = MusicTracker.new()
music_tracker.add("song 1")
music_tracker.add("song 2")
music_tracker.add("song 3")
music_tracker.view_songs => ["song 1" , "song 2" , "song 3"]
