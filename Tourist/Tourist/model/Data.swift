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
    var booksA: Array<BookInformation>
}


struct BookInformation {
  let bookImage: String
    let bookImage1: String
    let bookImage2: String
    let bookImage3: String
    
  let bookName: String
}
var bookList = [
   
    Book(image: UIImage(named: "4"), name: "KAYA cafe ☕️", booksA: [
        BookInformation(bookImage: "a1",bookImage1: "a2", bookImage2: "a3", bookImage3: "4" ,bookName: "KAYA cafe ☕️")
    ]),
    Book(image: UIImage(named: "5"), name: "high city 🏞", booksA: [
        BookInformation(bookImage: "s1",bookImage1: "s2", bookImage2: "s3", bookImage3: "s4", bookName: "high city 🏞"),
    ]),
    Book(image: UIImage(named: "t1"), name: "AZIZAH ⛰", booksA: [
        BookInformation(bookImage: "2",bookImage1: "t2", bookImage2: "t3", bookImage3: "2", bookName: "AZIZAH ⛰")
    ]),
    Book(image: UIImage(named: "7"), name: "Abha Dam Lake", booksA: [
        BookInformation(bookImage: "q3",bookImage1: "q2", bookImage2: "q1", bookImage3: "7", bookName: "Abha Dam Lake")
    ]),
    Book(image: UIImage(named: "1"), name: " Jabal sawda ⛰", booksA: [
        BookInformation(bookImage: "w1",bookImage1: "w2", bookImage2: "w3", bookImage3: "1", bookName: "Jabal sawda ⛰")
    ]),
      Book(image: UIImage(named: "8"), name: "Candy Tree Cafe", booksA: [
        BookInformation(bookImage: "z1",bookImage1: "z2", bookImage2: "z3", bookImage3: "8", bookName: "Candy Tree Cafe")
    ]),
      Book(image: UIImage(named: "9"), name: "Abu Kheyal Park", booksA: [
        BookInformation(bookImage: "f1",bookImage1: "f2", bookImage2: "f3", bookImage3: "9", bookName: "Abu Kheyal Park")
    ]),
      Book(image: UIImage(named: "10"), name: "Piano Cafe  ☕️", booksA: [
        BookInformation(bookImage: "p1",bookImage1: "p2", bookImage2: "p3", bookImage3: "10", bookName: "Piano Cafe  ☕️")
    ]),
    
Book(image: UIImage(named: "6"), name: "Fog cafe ☕️ ", booksA: [
    BookInformation(bookImage: "d1",bookImage1: "d2", bookImage2: "d3", bookImage3: "6", bookName: "Fog cafe ☕️")

    ]),
    Book(image: UIImage(named: "c4"), name: "  على بالي  ☕️", booksA: [
        BookInformation(bookImage: "c1",bookImage1: "c2", bookImage2: "c3", bookImage3: "3", bookName: "  على بالي  ☕️")
    ]),


    
           ]

struct EnglishBook {
    var image: String
    var name: String
}

let bookList2 = [
    EnglishBook(image: "1", name: "wk"),
    EnglishBook(image: "1", name: "wk"),
    EnglishBook(image: "1", name: "wk"),
     
] as [Any]


