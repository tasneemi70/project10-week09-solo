//
//  EnglishVC.swift
//  tourist
//
//  Created by Tsnim Alqahtani on 18/04/1443 AH.
//

import AVFoundation
import UIKit

class CameraViewController : UIViewController,UIImagePickerControllerDelegate , UINavigationControllerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
      view.backgroundColor = .white
            setUpImage()
        view.addSubview(btnPlace)
        view.addSubview(fieldPlace)
   }
    
    
    
  let imagePicker = UIImagePickerController()
    
  var Image: UIImageView = {
    let pI = UIImageView()
    pI.image = UIImage(named: "12")
      pI.layer.cornerRadius = 50
    return pI
  }()
    
    var fieldPlace: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        tf.backgroundColor = .systemGray6
        tf.layer.cornerRadius = .minimumMagnitude(20, 20)
        tf.text = ""
        tf.placeholder = (" Place Name....")
        return tf
    }()

    var btnPlace: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
//        btn.layer.cornerRadius = .maximumMagnitude(20, 20)
        btn.setTitleColor(.black, for: .normal)
        btn.setTitle("Share", for: .normal)
        btn.backgroundColor = UIColor(displayP3Red: 230/255, green:  220/255, blue: 200/255, alpha: 1)
        btn.addTarget(self, action: #selector(sharePlace), for: .touchUpInside)
        btn.layer.cornerRadius = 25
        btn.layer.masksToBounds = true
        return btn
    }()
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
      
      
       Image.translatesAutoresizingMaskIntoConstraints = false
      btnPlace.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([

      Image.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
      Image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      Image.widthAnchor.constraint(equalToConstant: 200),
      Image.heightAnchor.constraint(equalToConstant: 200),
      
      btnPlace.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
      btnPlace.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      btnPlace.widthAnchor.constraint(equalToConstant: 100),
      btnPlace.heightAnchor.constraint(equalToConstant: 100),
      
      
      fieldPlace.topAnchor.constraint(equalTo: view.topAnchor, constant: 440),
      fieldPlace.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32),
      fieldPlace.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32),
      fieldPlace.heightAnchor.constraint(equalToConstant: 40),

        ])
  }
  @objc private func presentPhotoInputActionsheet() {
      let actionSheet = UIAlertController(title: "Attach Photo :camera: ",
                        message: "Where would you like to attach a photo from",
                        preferredStyle: .actionSheet)
      actionSheet.addAction(UIAlertAction(title: "Camera :camera:", style: .default, handler: { [weak self] _ in
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = self
        picker.allowsEditing = true
        self?.present(picker, animated: true)
      }))
      actionSheet.addAction(UIAlertAction(title: "Photo Library :sunrise_over_mountains:", style: .default, handler: { [weak self] _ in
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        picker.allowsEditing = true
        self?.present(picker, animated: true)
      }))
      actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
      present(actionSheet, animated: true)
    }
  func setUpImage() {
    Image.isUserInteractionEnabled = true
    let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(presentPhotoInputActionsheet))
    Image.addGestureRecognizer(tapRecognizer)
    view.addSubview(Image)
  }
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
   picker.dismiss(animated: true, completion: nil)
   guard let selectedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage else {
    return
   }
   self.Image.image = selectedImage
  }
    
    @objc func sharePlace() {


        bookList.append(Book(
       
            
            image: Image.image! ,
      
        name: fieldPlace.text!))

    }
}
