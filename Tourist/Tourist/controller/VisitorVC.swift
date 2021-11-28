//
//  ArabicVC.swift
//  Tourist
//
//  Created by Tsnim Alqahtani  on 18/04/1443 AH.
//

import UIKit


class ArabicVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate  {
    
    var a : Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
// searchBar
//        collectionView.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerCellId")

        
        
        view.backgroundColor = .white
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ArabicCell.self,
        forCellWithReuseIdentifier: "cell")
        setupCollectionConstraints()
        
        collectionView.frame = view.bounds
        collectionView.reloadData()
        
        
      
    }
    let collectionView: UICollectionView = {
           let layout = UICollectionViewFlowLayout()
          layout.scrollDirection = .horizontal
          layout.minimumLineSpacing = 5
          layout.minimumInteritemSpacing = 5
        let cv = UICollectionView(frame:.zero , collectionViewLayout: layout)
           cv.backgroundColor = .white
         
           return cv
       }()
    
    lazy var searchBar : UISearchBar = {
       let s = UISearchBar()
           s.placeholder = "Search Timeline"
           s.delegate = self
        s.tintColor = .red
        s.barTintColor =  .systemGray
           s.barStyle = .default
           s.sizeToFit()
       return s
   }()
    
    // searchBar

//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerCellId", for: indexPath)
//          header.addSubview(searchBar)
//        searchBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
//        searchBar.heightAnchor.constraint(equalToConstant: 10).isActive = true
//        searchBar.widthAnchor.constraint(equalToConstant: 20).isActive = true
//        searchBar.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
//        searchBar.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50).isActive = true
//        return header
//    }
    func setupCollectionConstraints() {
          collectionView.translatesAutoresizingMaskIntoConstraints = false
          collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
          collectionView.heightAnchor.constraint(equalToConstant: 600).isActive = true
          collectionView.widthAnchor.constraint(equalToConstant: 10).isActive = true
          collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
          collectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
      }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ArabicCell
        
        
        cell.setCell(book: bookList[indexPath.item])
        
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 35
        //title1.text = book.name
                return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          return CGSize(width: 200, height: 250)
      }
    
    // searchBar

//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return CGSize(width: view.frame.width, height: 100)
//    }
   
////
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let newVC = Book1()
        newVC.title = a?.booksA[indexPath.row].bookName
        newVC.books = bookList[indexPath.row]

        newVC.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(newVC, animated: true)

       // print("Done")
    }
    
}
