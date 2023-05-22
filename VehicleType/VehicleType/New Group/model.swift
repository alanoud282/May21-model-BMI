import Foundation
struct VType: Identifiable{
    var id = UUID()
    var imageName: String
    var title: String
    var describtion: String
}
var t1 = VType (imageName: "36-moto-png-image-motorcycle-png", title: "Motocycle", describtion: "choose model")
var t2 = VType (imageName: "lovepik-a-car-png-image_401434180_wh1200", title: "car", describtion: "choose model")
var t3 = VType (imageName: "321461ec733901a15244584ecc2940f4", title: "Elctric car", describtion: "choose model")
var t4 = VType (imageName: "pngimg.com - pickup_truck_PNG16276", title: "pickup", describtion: "choose model")
var t5 = VType (imageName: "purepng.com-vantruckvehicletransportwhitevanbuscargodeliveryautocommercialcourier-981525067770rld6a", title: "van", describtion: "choose model")
var allVType = [ t1 , t2 ,t3 , t4 ,t5]
