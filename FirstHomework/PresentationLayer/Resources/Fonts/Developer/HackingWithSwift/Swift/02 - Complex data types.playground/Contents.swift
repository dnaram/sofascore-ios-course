import UIKit

// Arrays

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

print(beatles)
print(beatles[1])
// print(beatles[9]) error


// Sets

let colors = Set(["red", "green", "blue"])
print(colors)

let colors2 = Set(["red", "green", "blue", "red", "green"])
print(colors2)


// Tuples

var name = (first: "Taylor", last: "Swift")
print(name.0)
print(name.first)
// print(name["first"]) error


// Arrays vs Sets vs Tuples

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

let set = Set(["aardvark", "astronaut", "azalea"])

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]


// Dictionaries

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]


// Dictionary default values

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]


// Creating empty collections

// Dictionary
var teams = [String: String]()
teams["Paul"] = "Red"
teams["Michael"] = "Blue"
teams["Charlotte"] = "Green"

teams["Michael"]

// OR
var scores = Dictionary<String, Int>()

// Array
var results = [Int]()

// OR
var points = Array<Int>()

// Set
var words = Set<String>()
var numbers = Set<Int>()


// Enumerations

let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure


// Enum associated values

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")


// Enum raw values

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

// let earth = Planet(rawValue: 2)
let earth = Planet(rawValue: 3)










































