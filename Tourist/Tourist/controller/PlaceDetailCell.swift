//
//  PlaceDetailVCl.swift
//  Tourist
//
//  Created by Tsnim Alqahtani on 22/04/1443 AH.
//


import UIKit

class Book1: UIViewController, UITableViewDelegate, UITableViewDataSource {
  var books: Book?
  lazy var tableView1: UITableView = {
    let t = UITableView()
    t.translatesAutoresizingMaskIntoConstraints = false
    t.delegate = self
    t.dataSource = self
    t.register(BookCell1.self, forCellReuseIdentifier: BookCell1.identifier)
    return t
   }()
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(tableView1)
//    view.addSubview(openBook)
    view.backgroundColor = .systemTeal
    NSLayoutConstraint.activate([
      tableView1.topAnchor.constraint(equalTo: view.topAnchor),
      tableView1.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      tableView1.rightAnchor.constraint(equalTo: view.rightAnchor),
      tableView1.leftAnchor.constraint(equalTo: view.leftAnchor),
      // x: right and left
      // y: up and down

    ])

  }
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return books?.booksA.count ?? 0
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as! BookCell1
    let b = books!.booksA[indexPath.item]
    cell.nameLabel11.text = b.bookName
    cell.bookImage11.image = UIImage(named: b.bookImage)
      cell.PlaceImage11.image = UIImage(named: b.bookImage1)
      cell.PlaceImage12.image = UIImage(named: b.bookImage2)
      cell.PlaceImage13.image = UIImage(named: b.bookImage3)
      

      //    cell.auther.text = b.auther
//    cell.pagesN.text = b.pageNumber
    return cell
  }
  var selectedIndex = -1
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
     if indexPath.row == selectedIndex {
      return 354
     }else {
      return 500
     }
    }


    }

class BookCell1: UITableViewCell {
    
 static let identifier = "bookCell"
  let pdfTitle = Date()
    
  //@objc var webView: WKWebView?
    
   let bookImage11: UIImageView = {
    let bookImage = UIImageView()
    bookImage.layer.borderWidth = 1
    bookImage.layer.borderColor = .init(red: 230/255, green: 237/255, blue: 184/255, alpha: 1)
    bookImage.layer.cornerRadius = 20
    bookImage.contentMode = .scaleAspectFill
    bookImage.clipsToBounds = true
    bookImage.backgroundColor = .systemTeal
    return bookImage
  }()
    
    let PlaceImage11: UIImageView = {
     let PlaceImage = UIImageView()
        PlaceImage.layer.borderWidth = 1
        PlaceImage.layer.borderColor = .init(red: 230/255, green: 237/255, blue: 184/255, alpha: 1)
        PlaceImage.layer.cornerRadius = 20
        PlaceImage.contentMode = .scaleAspectFill
        PlaceImage.clipsToBounds = true
        PlaceImage.backgroundColor = .systemTeal
     return PlaceImage
   }()
    
    
    let PlaceImage12: UIImageView = {
     let PlaceImage2 = UIImageView()
        PlaceImage2.layer.borderWidth = 1
        PlaceImage2.layer.borderColor = .init(red: 230/255, green: 237/255, blue: 184/255, alpha: 1)
        PlaceImage2.layer.cornerRadius = 20
        PlaceImage2.contentMode = .scaleAspectFill
        PlaceImage2.clipsToBounds = true
        PlaceImage2.backgroundColor = .systemTeal
     return PlaceImage2
   }()
    
    
    let PlaceImage13: UIImageView = {
     let PlaceImage3 = UIImageView()
        PlaceImage3.layer.borderWidth = 1
        PlaceImage3.layer.borderColor = .init(red: 230/255, green: 237/255, blue: 184/255, alpha: 1)
        PlaceImage3.layer.cornerRadius = 20
        PlaceImage3.contentMode = .scaleAspectFill
        PlaceImage3.clipsToBounds = true
        PlaceImage3.backgroundColor = .systemTeal
     return PlaceImage3
   }()
    
    
   let nameLabel11: UILabel = {
    let namebook = UILabel()
    namebook.font = UIFont(name: "AvenirNextCondensed-Medium", size: 16.0)
    namebook.textAlignment = .center
    namebook.backgroundColor = UIColor(displayP3Red: 230/255, green:  220/255, blue: 200/255, alpha: 1)
    namebook.layer.cornerRadius = 20
    namebook.layer.masksToBounds = true
    return namebook
  }()
    
  let address1: UILabel = {
    let address = UILabel()
      address.font = UIFont(name: "AvenirNextCondensed-Medium", size: 16.0)
      address.textColor = .black
      address.textAlignment = .center
      address.backgroundColor = UIColor(displayP3Red: 230/255, green: 237/255, blue: 184/255, alpha: 1)
      address.layer.cornerRadius = 20
      address.layer.masksToBounds = true
    return address
  }()
  
override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    //super.init(style: style, reuseIdentifier: reuseIdentifier)
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    contentView.addSubview(bookImage11)
    contentView.addSubview(PlaceImage11)
    contentView.addSubview(PlaceImage12)
    contentView.addSubview(PlaceImage13)
    contentView.addSubview(nameLabel11)
   
    contentView.clipsToBounds = true
    contentView.backgroundColor = .white
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder: has not implement>>>")
  }
  override func layoutSubviews() {
    super.layoutSubviews()
      
      
     
    // x: right and left
    // y: up and down
      
    bookImage11.frame = CGRect(x: 10,
                y: 10 ,
                width: 190,
                height: 200)
      PlaceImage11.frame = CGRect(x: 205,
                  y: 10 ,
                  width: 190,
                  height: 200)
      
      
      
      nameLabel11.frame = CGRect(x: 10,
                    y: 430 ,
                  width: 250,
                  height: 50)
      
      
      PlaceImage12.frame = CGRect(x: 205,
                                  y: 220 ,
                                width: 190,
                                height: 200)

      PlaceImage13.frame = CGRect(x: 10,
                                  y: 220 ,
                                width: 190,
                                height: 200)


  }
    
}
