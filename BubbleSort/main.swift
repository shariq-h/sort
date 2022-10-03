// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

func swap(integers: inout [Int], firstIndex: Int, secondIndex: Int) {
    integers.swapAt(firstIndex, secondIndex)
}

func bubbleSort(unsortedIntegers: [Int]) -> [Int] {
    var sortingIntegers = unsortedIntegers
    var passCount = 0
    var totalSwapCount = 0
    var swapsThisPass = 0

    print("Pass: \(passCount), Swaps: \(swapsThisPass)/\(totalSwapCount), Array: \(sortingIntegers) ")
    
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

        print("Pass: \(passCount), Swaps: \(swapsThisPass)/\(totalSwapCount), Array: \(sortingIntegers) ")
        
        } while swapsThisPass != 0

        return sortingIntegers
}

let sortedIntegers = bubbleSort(unsortedIntegers: unsortedIntegers)
