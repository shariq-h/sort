var stdin : [String] = []

while let line = readLine() {
    stdin.append(line)
}

func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    integers.swapAt(firstIndex, secondIndex)
}

func bubbleSort(unsortedIntegers: [String]) -> [String] {
    var sortingIntegers = unsortedIntegers
    var passCount = 0
    var totalSwapCount = 0
    var swapsThisPass = 0

    //print("Pass: \(passCount), Swaps: \(swapsThisPass)/\(totalSwapCount), Array: \(sortingIntegers) ")
    
    repeat {
        swapsThisPass = 0

        for index in 0 ..< sortingIntegers.count - 1 {
            let thisIndex = index
            let nextIndex = index + 1

            let thisElement = sortingIntegers[thisIndex]
            let nextElement = sortingIntegers[nextIndex]

            if thisElement > nextElement {
                swap(integers: &sortingIntegers, firstIndex: thisIndex, secondIndex: nextIndex)
                totalSwapCount += 1
                swapsThisPass += 1
            }            
        }
        passCount += 1

        //print("Pass: \(passCount), Swaps: \(swapsThisPass)/\(totalSwapCount), Array: \(sortingIntegers) ")
        print("pass: \(passCount)")
        } while swapsThisPass != 0

        return sortingIntegers
}

let sortedIntegers = bubbleSort(unsortedIntegers: stdin)
