//
//  AR.swift
//  AR
//
//  Created by ساره المرشد on 22/05/2023.
//
import Foundation
struct AR: Identifiable{
    var id = UUID()
    var imageName: String
    var title: String
   
}
var a1 = AR (imageName: "1200px-Catenoid.svg", title: "Catrnoid")
var a2 = AR (imageName: "CBNtb8qsmA", title: "Mobius Steip")
var a3 = AR (imageName: "HyperboloidOfOneSheet", title: "Hyperboloid")
var a4 = AR (imageName: "ellipsoid", title: "Ellipsoid")
var a5 = AR (imageName: "Tesseract_torus", title: "Torus")

var allAR = [ a1 , a2 ,a3 , a4 ,a5]
