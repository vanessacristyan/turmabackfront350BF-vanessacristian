//
//  ViewController.swift
//  priemiroAppTableViewBF
//
//  Created by Usuario on 06/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configTableView()
        
    }
    func configTableView() {
        //configurar os protocolos
        tableview.delegate = self
        tableview.dataSource = self
        //registrar a celula
        
    }

}

//DATA SOURCE -> responsavel pela parte de dados
extension ViewController : UITableViewDataSource {
     
    //quantidade de itens  por secao
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    // responsavel por criar as celulas
    //indexpath
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameTableViewCell", for: <#T##IndexPath#>) as? NameTableViewCell
        return cell ?? UITableViewCell ()
    }
    func tableView(_ tableView: UITableView, heightForROwart  indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}
//DELEGATE -> RESPONSAVEL PELA INTERACAO DO USUARIOO
extension ViewController: UITableViewDelegate {
    
}




