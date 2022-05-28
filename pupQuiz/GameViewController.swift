//
//  GameViewController.swift
//  pupQuiz
//
//  Created by lss8 on 18/05/22.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet var akitaPup: UIImageView!
    @IBOutlet var heart3: UIImageView!
    @IBOutlet var heart2: UIImageView!
    @IBOutlet var heart1: UIImageView!
    @IBOutlet var coin3: UIImageView!
    @IBOutlet var coin2: UIImageView!
    @IBOutlet var coin1: UIImageView!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2C: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    
    @IBOutlet var stageNumberLabel: UILabel!
    
    var stage: Int = 1
    let answers = [2,3,1,2,4,3,3,4,2,1]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        autolayout()
        
    }
    
    @IBAction func tocou(_ sender: UIButton) {
        
        if sender == button1 {
            stage = checkAnswer(botao: 1, fase: stage, resposta: answers)
        }
        else if sender == button2C {
            stage = checkAnswer(botao: 2, fase: stage, resposta: answers)
        }
        else if sender == button3 {
            stage = checkAnswer(botao: 3, fase: stage, resposta: answers)
        }
        else {
            stage = checkAnswer(botao: 4, fase: stage, resposta: answers)
        }
    }
    
    func checkAnswer(botao: Int, fase: Int, resposta: [Int]) -> Int {
        if botao == resposta[fase-1] {
            swap(newStage: fase+1)
            return fase+1
        }
        else {
            loseHeart()
            return fase
        }
    }
    
    func swap(newStage: Int) {
        stageNumberLabel.text = String(newStage)+"/10"
        
        switch newStage {
        case 2:
            akitaPup.image = UIImage(named: "alaskan5")
            button1.setTitle("Border Collie", for: UIControl.State.normal)
            button2C.setTitle("Husky", for: UIControl.State.normal)
            button3.setTitle("Malamute", for: UIControl.State.normal)
            button4.setTitle("Labrador", for: UIControl.State.normal)
            
        case 3:
            akitaPup.image = UIImage(named: "border_collie4")
            button1.setTitle("Border Collie", for: UIControl.State.normal)
            button2C.setTitle("Pastor Alemão", for: UIControl.State.normal)
            button3.setTitle("Husky", for: UIControl.State.normal)
            button4.setTitle("Malamute", for: UIControl.State.normal)
            
        case 4:
            akitaPup.image = UIImage(named: "corgi4")
            button1.setTitle("Jack Russel", for: UIControl.State.normal)
            button2C.setTitle("Corgi", for: UIControl.State.normal)
            button3.setTitle("Shitzu", for: UIControl.State.normal)
            button4.setTitle("Yorkshire", for: UIControl.State.normal)
            
        case 5:
            akitaPup.image = UIImage(named: "doberman1")
            button1.setTitle("Boxer", for: UIControl.State.normal)
            button2C.setTitle("Dogue Alemão", for: UIControl.State.normal)
            button3.setTitle("Rottweiler", for: UIControl.State.normal)
            button4.setTitle("Doberman", for: UIControl.State.normal)
            
        case 6:
            akitaPup.image = UIImage(named: "doguealemao3")
            button1.setTitle("Doberman", for: UIControl.State.normal)
            button2C.setTitle("Pastor Alemão", for: UIControl.State.normal)
            button3.setTitle("Dogue Alemão", for: UIControl.State.normal)
            button4.setTitle("Labrador", for: UIControl.State.normal)
            
        case 7:
            akitaPup.image = UIImage(named: "fila4")
            button1.setTitle("São Bernardo", for: UIControl.State.normal)
            button2C.setTitle("Boxer", for: UIControl.State.normal)
            button3.setTitle("Fila Brasileiro", for: UIControl.State.normal)
            button4.setTitle("Pitbul", for: UIControl.State.normal)
            
        case 8:
            akitaPup.image = UIImage(named: "husky1")
            button1.setTitle("Border Collie", for: UIControl.State.normal)
            button2C.setTitle("Pastor Alemão", for: UIControl.State.normal)
            button3.setTitle("Malamute", for: UIControl.State.normal)
            button4.setTitle("Husky", for: UIControl.State.normal)
            //[1]
        case 9:
            akitaPup.image = UIImage(named: "jack_russel3")
            button1.setTitle("Beagle", for: UIControl.State.normal)
            button2C.setTitle("Jack Russel", for: UIControl.State.normal)
            button3.setTitle("Shitzu", for: UIControl.State.normal)
            button4.setTitle("Pinscher", for: UIControl.State.normal)
            
        case 10:
            akitaPup.image = UIImage(named: "poodle4")
            button1.setTitle("Poodle", for: UIControl.State.normal)
            button2C.setTitle("Shitzu", for: UIControl.State.normal)
            button3.setTitle("Yorkshire", for: UIControl.State.normal)
            button4.setTitle("Cocker", for: UIControl.State.normal)
            
        default:
            perdeu()
        }
    }
    
    func loseHeart() {
        if (!heart3.isHidden) {
            heart3.isHidden = true
        }
        else if !heart2.isHidden {
            heart2.isHidden = true
        }
        else {
            perdeu()
        }
    }
    
    func perdeu() {
        heart2.isHidden = false
        heart3.isHidden = false
        
        performSegue(withIdentifier: "perdeuJogo", sender: self)
    }
    
    func autolayout() {
        akitaPup.translatesAutoresizingMaskIntoConstraints = false
        heart1.translatesAutoresizingMaskIntoConstraints = false
        heart2.translatesAutoresizingMaskIntoConstraints = false
        heart3.translatesAutoresizingMaskIntoConstraints = false
        coin1.translatesAutoresizingMaskIntoConstraints = false
        coin2.translatesAutoresizingMaskIntoConstraints = false
        coin3.translatesAutoresizingMaskIntoConstraints = false
        button1.translatesAutoresizingMaskIntoConstraints = false
        button2C.translatesAutoresizingMaskIntoConstraints = false
        button3.translatesAutoresizingMaskIntoConstraints = false
        button4.translatesAutoresizingMaskIntoConstraints = false
        stageNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        heart1.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        heart2.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        heart3.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        self.view.addConstraint(NSLayoutConstraint(
            item: heart3!, attribute: .right, relatedBy: .equal, toItem: akitaPup, attribute: .right, multiplier: 1.0, constant: 0
        ))
        self.view.addConstraint(NSLayoutConstraint(
            item: heart2!, attribute: .right, relatedBy: .equal, toItem: heart3, attribute: .left, multiplier: 1.0, constant: -5
        ))
        self.view.addConstraint(NSLayoutConstraint(
            item: heart1!, attribute: .right, relatedBy: .equal, toItem: heart2, attribute: .left, multiplier: 1.0, constant: -5
        ))
        
        akitaPup.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        akitaPup.heightAnchor.constraint(equalToConstant: self.view.frame.height/3).isActive = true
        akitaPup.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.9).isActive = true
        self.view.addConstraint(NSLayoutConstraint(
            item: akitaPup!, attribute: .top, relatedBy: .equal, toItem: heart1, attribute: .bottom, multiplier: 1.0, constant: 20
        ))
        
        self.view.addConstraint(NSLayoutConstraint(
            item: coin1!, attribute: .left, relatedBy: .equal, toItem: akitaPup, attribute: .left, multiplier: 1.0, constant: -5
        ))
        self.view.addConstraint(NSLayoutConstraint(
            item: coin2!, attribute: .left, relatedBy: .equal, toItem: coin1, attribute: .right, multiplier: 1.0, constant: -7
        ))
        self.view.addConstraint(NSLayoutConstraint(
            item: coin3!, attribute: .left, relatedBy: .equal, toItem: coin2, attribute: .right, multiplier: 1.0, constant: -7
        ))
        self.view.addConstraint(NSLayoutConstraint(
            item: coin3!, attribute: .bottom, relatedBy: .equal, toItem: akitaPup, attribute: .top, multiplier: 1.0, constant: -10
        ))
        self.view.addConstraint(NSLayoutConstraint(
            item: coin2!, attribute: .bottom, relatedBy: .equal, toItem: akitaPup, attribute: .top, multiplier: 1.0, constant: -10
        ))
        self.view.addConstraint(NSLayoutConstraint(
            item: coin1!, attribute: .bottom, relatedBy: .equal, toItem: akitaPup, attribute: .top, multiplier: 1.0, constant: -10
        ))

        button1.heightAnchor.constraint(equalToConstant: self.view.frame.height/7).isActive = true
        button1.widthAnchor.constraint(equalToConstant: self.view.frame.width/2.5).isActive = true
        button2C.heightAnchor.constraint(equalToConstant: self.view.frame.height/7).isActive = true
        button2C.widthAnchor.constraint(equalToConstant: self.view.frame.width/2.5).isActive = true
        button3.heightAnchor.constraint(equalToConstant: self.view.frame.height/7).isActive = true
        button3.widthAnchor.constraint(equalToConstant: self.view.frame.width/2.5).isActive = true
        button4.heightAnchor.constraint(equalToConstant: self.view.frame.height/7).isActive = true
        button4.widthAnchor.constraint(equalToConstant: self.view.frame.width/2.5).isActive = true
        
        button1.leftAnchor.constraint(equalTo: akitaPup.leftAnchor).isActive = true
        button2C.rightAnchor.constraint(equalTo: akitaPup.rightAnchor).isActive = true
        button3.leftAnchor.constraint(equalTo: akitaPup.leftAnchor).isActive = true
        button4.rightAnchor.constraint(equalTo: akitaPup.rightAnchor).isActive = true
        
        self.view.addConstraint(NSLayoutConstraint(
            item: button1!, attribute: .top, relatedBy: .equal, toItem: akitaPup, attribute: .bottom, multiplier: 1.0, constant: 30
        ))
        self.view.addConstraint(NSLayoutConstraint(
            item: button2C!, attribute: .top, relatedBy: .equal, toItem: akitaPup, attribute: .bottom, multiplier: 1.0, constant: 30
        ))
        self.view.addConstraint(NSLayoutConstraint(
            item: button3!, attribute: .top, relatedBy: .equal, toItem: button1, attribute: .bottom, multiplier: 1.0, constant: 20
        ))
        self.view.addConstraint(NSLayoutConstraint(
            item: button4!, attribute: .top, relatedBy: .equal, toItem: button2C, attribute: .bottom, multiplier: 1.0, constant: 20
        ))
        
        stageNumberLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.view.addConstraint(NSLayoutConstraint(
            item: stageNumberLabel!, attribute: .bottom, relatedBy: .equal, toItem: akitaPup, attribute: .top, multiplier: 1.0, constant: -20
        ))
    }

}
