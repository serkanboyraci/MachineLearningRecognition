//
//  ViewController.swift
//  MachineLearningRecognation
//
//  Created by Ali serkan Boyracı  on 21.11.2022.
//

import UIKit
import CoreML // using ML
import Vision // using in ML

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var resultLabel: UILabel!
    
    var chosenImage = CIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func changeClicked(_ sender: Any) {
        let picker = UIImagePickerController() // to select image from library, first you have to add class pickercontrollerdelegate and navigationcontrollerdelegate
        picker.delegate = self
        picker.sourceType = .photoLibrary // we use simulator not phone.
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage // after selecting image what will you do in it.
        self.dismiss(animated: true, completion: nil) // to close func.
        // you can add info window from info.plist, you already know it.
        
        if let ciImage = CIImage(image: imageView.image!) { // we change UIImage to CIImage
            chosenImage = ciImage
            
        }
        
        recognizeImage(image: chosenImage) // after selecting image, we will use it in ML func
        
    }
    
    func recognizeImage(image: CIImage) {
        
    }
    
    
}

