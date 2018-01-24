//
//  MenuViewController.swift
//  GameStep2
//
//  Created by Володимир Смульський on 1/11/18.
//  Copyright © 2018 Володимир Смульський. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // задаємо дефолтне значення для PickerView
    var numberOfCardsFromPicker = 6
    
    // числа які відображаються в pickerView
    let numberOfCards = ["6","8","12","16","24"]
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBAction func playButton(_ sender: UIButton) {
        //під час натискання кнопки переходимо на наступний контроллер
        performSegue(withIdentifier: "ArrowNumberOfCards", sender: self)
    }
    
    // override перевизначає функцію з якогось протоколу
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        // тут ми вказуємо destination as! FlipCardsViewController куди ми будемо передавати
        let temporaryVariableOfPicker = segue.destination as! FlipCardsViewController
        //тут ми вказуємо що ми змінну з нашого контроллера передаємо в іншу змінну в наступному контороллері
        temporaryVariableOfPicker.getCardNumbers = numberOfCardsFromPicker
    }
    // кількість барабанів у пікервю
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // повертає стрінгове число що ми вибрали в пікері
        return  numberOfCards[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // скільки варіантів є у пікері
        return numberOfCards.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // повертає число яке ми вибрали у пікері і приводить до int і записує в змінну і якій ми вказуємо
        // скільки селів малювати
        numberOfCardsFromPicker = Int(numberOfCards[row])!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // колір фону контроллера
        self.view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        // Called after the view has been loaded. For view controllers created in code, this is after -loadView. For view controllers unarchived from a nib, this is after the view is set.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

//extension MenuViewController: UIPickerViewDelegate {
//
//}
//
//extension MenuViewController: UIPickerViewDataSource {
//
//}

