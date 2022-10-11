var stdin : [String] = []

while let line = readLine() {
    stdin.append(line)
}


func selectionSort(input:[String]) {
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

selectionSort(input:stdin)
