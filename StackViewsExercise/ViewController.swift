//
//  ViewController.swift
//  StackViewsExercise
//
//  Created by Risa on 10/7/18.
//  Copyright © 2018 Risa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageShow: UIImageView!
    @IBOutlet weak var FirstNam: UILabel!
    @IBOutlet weak var LastName: UILabel!
    @IBOutlet weak var JobTitle: UILabel!
    @IBOutlet weak var InfoText: UITextView!
    
    var firstnames: [String] = ["Renato", "Rosangela", "Tim", "Bartol", "Jeannette", "Franka", "Valter", "Garnett", "Hyan", "Jasper"]
    var lastnames: [String] = ["Smith", "Johnson", "Williams", "Brown", "Jones", "Miller", "Davis", "Garcia", "Rodriguez", "Wilson"]
    var jobtitle: [String] = ["Developer", "Retail salespeople", "Cashiers", "Office clerks", "Registered nurses", "Student", "Material movers", "Janitors", "Secretaries", "General managers"]
    var infotext: [String] = ["Sed lacus felis, eleifend nec finibus eu, commodo quis eros. Ut eros justo, sollicitudin eu ullamcorper vel, facilisis eu lectus. Mauris commodo congue felis, at viverra quam eleifend in. Cras in pretium mauris. Donec egestas leo felis, nec suscipit quam mollis eget.","Proin dictum magna lacinia mauris tempus consequat. Suspendisse sed imperdiet eros. Etiam ac dapibus ligula, eu faucibus justo. In est lorem, pretium vitae pellentesque ac, tempus ut lacus. Duis id turpis nisi. Sed congue vehicula sollicitudin.","In pellentesque mi nec condimentum sodales. Aenean vel purus sit amet velit egestas venenatis. Mauris sed suscipit justo, ut imperdiet magna.","Donec fringilla nulla ac orci vehicula tempus. Curabitur porta rutrum finibus. Nulla tincidunt eget risus sed vehicula. Maecenas pulvinar ultricies nunc nec sollicitudin.","Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus iaculis urna in venenatis consectetur. Suspendisse potenti. Donec vitae velit et sapien bibendum tristique.","Nunc fringilla elit nisi. Proin tristique erat sit amet varius pharetra. Quisque suscipit dictum lectus eu fringilla.","Fusce a sollicitudin dui, ut feugiat felis. Integer eu neque malesuada, aliquam ex vel, lacinia diam.","Vestibulum metus elit, malesuada eu finibus eget, tincidunt ut magna. Pellentesque blandit sem eget nibh elementum mollis.","Mauris vitae placerat risus. Nulla nec enim mollis, mattis ligula nec, pellentesque risus.","Sed eu urna venenatis, pretium massa in, molestie lorem. Quisque ut lacinia sapien, nec porta mi. Fusce imperdiet tempus diam pellentesque luctus."]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showEmployee(index: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonClick(_ sender: Any) {
        // get a button which has been tapped
        let button :UIButton = sender as! UIButton
        // get button title
        let buttonTitle :String = button.currentTitle!
        // get it as a number
        let buttonNumber :Int = Int(buttonTitle)!
        // show employee
        showEmployee(index: buttonNumber)
    }
    
    func showEmployee(index: Int) {
        // change image
        ImageShow.image = UIImage(named: "employee\(index)")
        // change texts
        FirstNam.text = firstnames[index-1]
        LastName.text = lastnames[index-1]
        JobTitle.text = jobtitle[index-1]
        //infotext.text = infotexts[index-1]
        InfoText.text = infotext[index-1]
    }
    

}

