

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:



func selectionSort(input:[Int]) {
    var start = input
    var tracker = input
    
    var pass = 0
    print("Pass: 0, Swaps: 0/0, Array: \(start)")
    for elements in 0..<(start.count-1) {
        pass += 1
        if tracker.count != 0 {
            if let min = tracker.min() {
                if let minLocation = start.firstIndex(of: min) {
                
                    start.swapAt(elements, minLocation)
                    if let trackerLocation = tracker.firstIndex(of: min) {
                        tracker.remove(at: trackerLocation)
                        print("Pass: \(pass), Swaps: 1/\(pass), Array: \(start)")
                    }
                }
            }
        }
    }
}

selectionSort(input:unsortedIntegers)
