func combinations<T>(source: [T], takenBy : Int) -> [[T]] {
    if source.count == takenBy {return [source]}
    if source.isEmpty || takenBy == 0 {return []}
    if takenBy == 1 {return source.map {[$0]}}

    var result : [[T]] = []

    let rest = Array(source[1...])
    let subCombos = combinations(source: rest, takenBy: takenBy - 1)
    result += subCombos.map {[source[0]] + $0}
    result += combinations(source: rest, takenBy: takenBy)
    return result
}