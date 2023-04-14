import Foundation

class TracksCache {
    private let tracks: [Track]
    
    public init(tracks: [Track]) {
        self.tracks = tracks
    }
    
    public func cacheTracks() {
        for track in tracks {
            let url = URL(fileURLWithPath: "track_\(track.id).mp3")
            try? track.data.write(to: url)
        }
    }
}

class Track {
    public let id: UInt
    public let data: Data
    
    public init(data: Data) {
        id = UInt.random(in: UInt.min...UInt.max)
        self.data = data
    }
}