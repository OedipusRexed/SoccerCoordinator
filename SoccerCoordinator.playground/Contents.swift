// Individual Player Collections

var joeSmith: [String: String] = [
    "Name": "Joe Smith",
    "Height": "36",
    "Experience": "Yes",
    "Guardians": "Jim and Jan Smith"
]

var jillTanner: [String: String] = [
    "Name": "Jill Tanner",
    "Height": "36",
    "Experience": "Yes",
    "Guardians": "Ciara Tanner"
]

var billBon: [String: String] = [
    "Name": "Bill Bon",
    "Height": "43",
    "Experience": "Yes",
    "Guardians": "Sara and Jenny Bon"
]

var evaGordon: [String: String] = [
    "Name": "Eva Gordon",
    "Height": "45",
    "Experience": "No",
    "Guardians": "Wendy and Mike Gordon"
]

var mattGill: [String: String] = [
    "Name": "Matt Gill",
    "Height": "40",
    "Experience": "No",
    "Guardians": "Charles and Sylvia Gill"
]

var kimmyStein: [String: String] = [
    "Name": "Kimmy Stein",
    "Height": "41",
    "Experience": "No",
    "Guardians": "Bill and Hillary Stein"
]

var sammyAdams: [String: String] = [
    "Name": "Sammy Adams",
    "Height": "45",
    "Experience": "No",
    "Guardians": "Jeff Adams"
]

var karlSaygan: [String: String] = [
    "Name": "Karl Saygan",
    "Height": "42",
    "Experience": "Yes",
    "Guardians": "Heather Bledsoe"
]

var suzaneGreenberg: [String: String] = [
    "Name": "Suzanne Greenberg",
    "Height": "44",
    "Experience": "Yes",
    "Guardians": "Henrietta Dumas"
]

var salDali: [String: String] = [
    "Name": "Sal Dali",
    "Height": "41",
    "Experience": "No",
    "Guardians": "Gala Dali"
]

var joeKavalier: [String: String] = [
    "Name": "Joe Kavalier",
    "Height": "39",
    "Experience": "No",
    "Guardians": "Sam and Elaine Kavalier"
]

var benFinkelstein: [String: String] = [
    "Name": "Ben Finkelstein",
    "Height": "44",
    "Experience": "No",
    "Guardians": "Aaron and Jill Finkelstein"
]

var diegoSoto: [String: String] = [
    "Name": "Diego Soto",
    "Height": "41",
    "Experience": "Yes",
    "Guardians": "Robin and Sarika Soto"
]

var chloeAlaska: [String: String] = [
    "Name": "Chloe Alaska",
    "Height": "47",
    "Experience": "No",
    "Guardians": "David and Jamie Alaska"
]

var arnoldWillis: [String: String] = [
    "Name": "Arnold Willis",
    "Height": "43",
    "Experience": "No",
    "Guardians": "Claire Willis"
]

var phillipHelm: [String: String] = [
    "Name": "Phillip Helm",
    "Height": "44",
    "Experience": "Yes",
    "Guardians": "Thomas Helm and Eva Jones"
]

var lesClay: [String: String] = [
    "Name": "Les Clay",
    "Height": "42",
    "Experience": "Yes",
    "Guardians": "Wynonna Brown"
]

var herschelKrustofski: [String: String] = [
    "Name": "Herschel Krustofski",
    "Height": "45",
    "Experience": "Yes",
    "Guardians": "Hyman and Rachel Krustofski"
]

// Full Roster 

var players: [[String: String]] = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// Create Teams

var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []

// Setting Median Height var for EC
// attempts repeatedly proc'd compiler errors, will attempt later


// Sorting based on experience
/* use loop to name experienced vs inexperienced based on value of the
    key "Experience" and sort based on index count of team variables
 */
 
for experiencedPlayer in players {
        if experiencedPlayer["Experience"] == "Yes" {
    if teamDragons.count < teamSharks.count {
    teamDragons.append(experiencedPlayer)
    } else if teamSharks.count < teamRaptors.count{
    teamSharks.append(experiencedPlayer)
    } else {
        teamRaptors.append(experiencedPlayer)
            }
    }
}

for inexperiencedPlayer in players {
    if inexperiencedPlayer["Experience"] == "No" {
        if teamDragons.count < teamSharks.count {
            teamDragons.append(inexperiencedPlayer)
        } else if teamSharks.count < teamRaptors.count {
            teamSharks.append(inexperiencedPlayer)
        } else {
            teamRaptors.append(inexperiencedPlayer)
        }
    }
}

// print(teamRaptors)
// print(teamSharks)
// print(teamDragons)


// Empty Collection for Letters

var letters: [String] = []

// Personalized Letters

for player in teamDragons {
    letters.append("Hello, \(player["Guardians"]!). You're recieving this letter because your child, \(player["Name"]!) , has been placed on Team Dragon! Please make sure that \(player["Name"]!) is present for the first team practice on March 17th, at 1pm. We look forward to seeing you and your child there!")
    
}

for player in teamSharks {
    letters.append("Hello, \(player["Guardians"]!). You're recieving this letter because your child, \(player["Name"]!) , has been placed on Team Sharks! Please make sure that \(player["Name"]!) is present for the first team practice on March 17th, at 3pm. We look forward to seeing you and your child there!")
}

for player in teamRaptors {
    letters.append("Hello, \(player["Guardians"]!). You're recieving this letter because your child, \(player["Name"]!) , has been placed on Team Raptors! Please make sure that \(player["Name"]!) is present for the first team practice on March 18th, at 1pm. We look forward to seeing you and your child there!")
}

letters