//
//  ArabicVC.swift
//  Tourist
//
//  Created by Tsnim Alqahtani  on 18/04/1443 AH.
//

import UIKit


class VisitorVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate  {
    
    var searchPlace: Array<abhPlace> = []
    
    var a : abhPlace?
    
    lazy var searchBar:UISearchBar = UISearchBar()
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
         if searchText.isEmpty {
          let temp = searchPlace
             searchPlace = temp
         } else {
             searchPlace = searchPlace.filter({ oneBook in
           return oneBook.name.starts(with: searchText)
          })
         }
        collectionView.reloadData()
        }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
       searchBar.resignFirstResponder()
      }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        
        
        view.backgroundColor = .white
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(VisitorCell.self,
        forCellWithReuseIdentifier: "cell")
        setupCollectionConstraints()
        
        collectionView.frame = view.bounds
        collectionView.reloadData()
        
        searchBar.searchBarStyle = UISearchBar.Style.default
              searchBar.placeholder = " Search..."
              searchBar.sizeToFit()
              searchBar.isTranslucent = false
              searchBar.backgroundImage = UIImage()
              searchBar.delegate = self
              navigationItem.titleView = searchBar
        
      
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
    
    
    func setupCollectionConstraints() {
          collectionView.translatesAutoresizingMaskIntoConstraints = false
          collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
          collectionView.heightAnchor.constraint(equalToConstant: 600).isActive = true
          collectionView.widthAnchor.constraint(equalToConstant: 10).isActive = true
          collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
          collectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
      }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return PlaceList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! VisitorCell
        
        
        cell.setCell(book: PlaceList[indexPath.item])
        
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 35
        //title1.text = book.name
                return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          return CGSize(width: 200, height: 250)
      }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let newVC = Place1()
        newVC.title = a?.placeA[indexPath.row].PlaceName
        newVC.Places = PlaceList[indexPath.row]

        newVC.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(newVC, animated: true)

       // print("Done")
    }
    
}
