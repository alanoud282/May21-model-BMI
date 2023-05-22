import Foundation
struct Server: Identifiable{
    var id = UUID()
    var imageName: String
    var title: String
    var describtion: String
}
var s1 = Server (imageName: "Flag_of_the_United_States", title: "US", describtion: "15 location")
var s2 = Server (imageName: "Flag_of_Germany.svg", title: "Germany", describtion: "13 location")
var s3 = Server (imageName: "Flag_of_France_(1958–1976).svg", title: "France", describtion: "11 location")
var s4 = Server (imageName: "Flag_of_Japan.svg", title: "Japan", describtion: "10 location")
var s5 = Server (imageName: "Flag_of_South_Korea.svg", title: "South korea", describtion: "10 location")
var s6 = Server (imageName: "Flag_of_Italy.svg", title: "Italy", describtion: "10 location")

var allServer = [ s1,s2,s3,s4,s5,s6]
