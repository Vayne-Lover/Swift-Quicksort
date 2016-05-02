//Quicksort Start
func QuickSort(inout Numbers:[Int],Min:Int,Max:Int){
    if (Min>=Max){
        return
    }
    var First=Min
    var Last=Max
    let Key = Numbers[First]
    while (First<Last) {
        while (First<Last && Numbers[Last]>=Key) {
            Last -= 1
        }
        Numbers[First]=Numbers[Last]
        while (First<Last && Numbers[First]<=Key) {
            First += 1
        }
        Numbers[Last]=Numbers[First]
    }
    Numbers[First]=Key
    QuickSort(&Numbers,Min:Min,Max: First-1)
    QuickSort(&Numbers,Min:First+1, Max: Max)
}
//Quicksort End
//Test Start
var num=[5,2,6,3,9,11,7]
QuickSort(&num, Min: 0, Max: 6)
print(num)
//Test End