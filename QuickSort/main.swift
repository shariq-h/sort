
func main() {
var stdin : [String] = []

while let line = readLine() {
    stdin.append(line)
}

var result : [String] = []
func quickSort(input:[String]) {
    let array = input

    let pivot = array[(array.count-1)]
    var beforePivot : [String] = []
    var afterPivot : [String] = []
    var pivots : [String] = []

    for string in array {
        if string < pivot {
            beforePivot.append(string)
        }
        if string == pivot {
            pivots.append(string)
        }
        if string > pivot {
            afterPivot.append(string)
        }
    }

    if beforePivot.count == 1 {
        result.append(beforePivot[0])
    }
    if beforePivot.count > 1 {
        quickSort(input:beforePivot)
    }

    for p in pivots {
        result.append(p)
    }
    
    if afterPivot.count == 1 {
        result.append(afterPivot[0])
    }
    if afterPivot.count > 1 {
        quickSort(input:afterPivot)
    }

}

quickSort(input:stdin)
print(result)

}

main()
