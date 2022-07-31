//
//  ColorsViewContoller.swift
//  change bakgrounu color
//
//  Created by Muhannad Alnemer on 27/07/2022.
//

import UIKit

protocol ColorSelected{
    func didSelectedColor(color:UIColor)
}

class ColorsViewController : UITableViewController{
    var colors = [UIColor.red,.blue,.black]
    var colorDelegate : ColorSelected?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(describing: colors[indexPath.row])
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        colorDelegate?.didSelectedColor(color: colors[indexPath.row])
        navigationController?.popViewController(animated: true)
    }
}
