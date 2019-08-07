//
//  TableViewController.swift
//  UserListApp
//
//  Created by 吉澤優衣 on 2019/08/07.
//  Copyright © 2019 吉澤優衣. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var selectNum: Int = 0
    

   


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1    // ここ0にしたらセル表示されなくなった。
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 14
    }

    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let select = indexPath.row
        
        selectNum = select
        
        performSegue(withIdentifier: "showData", sender: nil)    // 画面遷移したい場所でこのコードを記述。
    }
    
    
    // segue遷移前動作
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showData", let vc = segue.destination as? ViewController else {
            return
        }
        
        vc.select = selectNum
    }
    


}
