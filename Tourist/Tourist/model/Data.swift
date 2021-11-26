//
//  Data.swift
//  eBook
//
//  Created by Tsnim Alqahtani on 18/04/1443 AH.
//

import UIKit

struct Book {
    var image: UIImage!
    var name: String
}

var bookList = [
   
    Book(image: UIImage(named: "1"), name: "كايا "),
    Book(image: UIImage(named: "5"), name: "high city"),
    Book(image: UIImage(named: "6"), name: "Fog coggee"),
    Book(image: UIImage(named: "7"), name: "مطل السد"),
    Book(image: UIImage(named: "1"), name: "السوده"),
    Book(image: UIImage(named: "2"), name: "العزيزه"),
    Book(image: UIImage(named: "3"), name: "مطعم الجوري"),
      Book(image: UIImage(named: "8"), name: "شجره الحلوى"),
      Book(image: UIImage(named: "9"), name: "حديقه ابو خيال"),
      Book(image: UIImage(named: "10"), name: "بيانو"),
           ]

struct EnglishBook {
    var image: String
    var name: String
}

let bookList2 = [
    EnglishBook(image: "11", name: "كن بخير"),
    EnglishBook(image: "12", name: "الرجال من المريخ و النساء من الزهرة"),
    EnglishBook(image: "13", name: "الدحيح"),
    EnglishBook(image: "14", name: "مت فارغا"),
    EnglishBook(image: "15", name: "لأنك الله"),
    EnglishBook(image: "16", name: "فن اللامبالاة"),
    EnglishBook(image: "17", name: "أربعون"),
    EnglishBook(image: "18", name: "نظرية الفستق"),
     
] as [Any]
