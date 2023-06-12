// https://school.programmers.co.kr/learn/courses/30/lessons/17683

func solution(_ m:String, _ musicinfos:[String]) -> String {
    let musicinfos = musicinfos.map {$0.split(separator: ",").map{String($0)}}
    var info: (title: String, playtime: Int) = ("", 0)
    
    func convertHash(_ arr: [String]) -> String {
        var arr = arr
        for (i, _) in arr.enumerated() {
            if i < arr.count - 1 {
                arr[i] = arr[i+1] == "#" ? arr[i].lowercased() : arr[i]
            }
        }
        arr.removeAll {$0 == "#"}
        return arr.joined()
    }
    
    var m = convertHash(m.map {String($0)})
    for (i, music) in musicinfos.enumerated() {
        let start = music[0].split(separator: ":").map{ Int($0)! }
        let end = music[1].split(separator: ":").map{ Int($0)! }
        let playtime = end[0]*60 + end[1] - (start[0]*60 + start[1])
        
        var mel = convertHash(music[3].map {String($0)})
        var melody = mel
        while melody.count < playtime {
            melody += mel
        }
        melody = String(melody.prefix(playtime))
        info = melody.contains(m) && playtime > info.playtime ? (music[2], playtime) : info
    }

    return info.playtime == 0 ? "(None)" : info.title
}

//(prefix_:) https://developer.apple.com/documentation/swift/string/prefix(_:)
