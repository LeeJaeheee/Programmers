// https://school.programmers.co.kr/learn/courses/30/lessons/161990

import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var a = [51, 51, -1, -1]

    for (i, wall) in wallpaper.enumerated() {
        for (j, w) in wall.enumerated() {
            if w == "#" {
                a = [min(a[0], i), min(a[1], j), max(a[2], i+1), max(a[3], j+1)]
            }
        }
    }
    return a
}
