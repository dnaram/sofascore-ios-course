import Cocoa

// HOW TO STORE ORDERED DATA IN ARRAYS

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

beatles[0]
numbers[1]
temperatures[2]

beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Novall")
beatles.append("Vivian")
beatles

// temperatures.append("Chris") error

let firstBeatle = beatles[0]
let firstNumber = numbers[0]
// let notAllowed = firstBeatle + firstNumber error


var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
scores[1]

var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

var songs = [String]()
songs.append("Kad mi dođeš ti")
songs.append("Cesarica")
songs.append("Magdalena")

var characters = ["Lana", "Pam", "Ray", "Sterling"]
characters.count

characters.remove(at: 2)
characters.count
characters

characters.removeAll()
characters.count
characters

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
bondMovies.contains("Frozen")

let cities = ["London", "Tokyo", "Rome", "Budapest"]
cities.sorted() // original array remains unchanged

let presidents = ["Bush", "Obama", "Trump", "Biden"]
for president in presidents.reversed() {
    print(president)
}


// HOW TO STORE AND FIND DATA IN DICTIONARIES

var employee = ["Taylor Swift", "Singer", "Nashville"]
"Name: \(employee[0])"
"Job title: \(employee[1])"
"Location: \(employee[2])"

let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location"])


let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2014, default: "Unknown"])


var heights = [String:Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"

archEnemies["Batman"]
archEnemies["Batman"] = "Penguin"
archEnemies["Batman"]

// HOW TO USE SETS FOR FAST DATA LOOKUP

let people = Set(["Denzel Washsington",
                  "Tom Cruise",
                  "Nicolas Cage",
                  "Samuel L Jackson"])
people

var people2 = Set<String>()
people2.insert("Denzel Washington")
people2.insert("Tom Cruise")
people2.insert("Nicolas Cage")
people2.insert("Samuel L Jackson")
people2


// HOW TO CREATE AND USE ENUMS

var selected = "Monday"
selected = "Tuesday"
selected = "January"
selected = "Friday "

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday


































