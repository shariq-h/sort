var stdin : [String] = []

while let line = readLine() {
    stdin.append(line)
}

// Add your code below:
func insertionSort(input:[String]) {
    var words = input
    print("Pass: 0, Swaps: 0/0, Array: \(words)")
    
    var pass = 1
    var totalSwaps = 0
    for word in 1..<words.count {
        var compare = word - 1
        var swaps = 0
        var shouldSwap = false
        while words[word] < words[compare] {
            shouldSwap = true
            swaps += 1
            if compare != 0 {
                compare -= 1
            } else if compare == 0 {
                break
            }
        }
        totalSwaps += swaps
        if shouldSwap == true {
            let swapper = words[word]
            words.remove(at: word)
            words.insert(swapper, at: (word-swaps))
        }
        print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(words)")
        pass += 1
    
    }
}

print(stdin)
insertionSort(input: stdin)
