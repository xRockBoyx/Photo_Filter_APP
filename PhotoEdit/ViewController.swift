//
//  ViewController.swift
//  PhotoEdit
//
//  Created by 黃威愷 on 2019/10/2.
//  Copyright © 2019 iOSClub. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet var photo : UIImageView!
    @IBOutlet var mask : UIView!
    
    @IBOutlet var R:UISlider!
    @IBOutlet var G:UISlider!
    @IBOutlet var B:UISlider!
    @IBOutlet var Alpha:UISlider!
    
    var imagePicker = UIImagePickerController()
    
    @IBAction func sliderChanged(_ sender: Any) {
       mask.backgroundColor = UIColor(displayP3Red: CGFloat(R.value), green: CGFloat(G.value), blue: CGFloat(B.value), alpha: CGFloat(Alpha.value))
        
    }
    
    @IBAction func ChooseImage(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        self.photo.image = info[.originalImage] as? UIImage
        self.imagePicker.dismiss(animated: true, completion: nil)
        
    }


}

