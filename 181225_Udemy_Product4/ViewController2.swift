import UIKit

class ViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var iconArray = ["0.png","1.jpg","2.jpg","3.jpg","4.jpg"]
    var stationArray = ["渋谷","新宿","恵比寿","代々木","高輪ゲートウェイ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    //tableViewのセルの数を指定（配列の中身の数だけ）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stationArray.count
    }
    
    //配列を1回読込み
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //各セルの要素を設定
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //CellのIDで、UITableViewCellのインスタンスを生成
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let icon = UIImage(named: iconArray[indexPath.row] )
        
        //Tag番号1で、UIImageViewインスタンスの生成 ⇒ アイコン表示
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = icon
        
        //Tag番号2で、UILabelインスタンスの生成 ⇒ 駅名表示
        let station = cell.viewWithTag(2) as! UILabel
        station.text = String(stationArray[indexPath.row])
        
        return cell
    }
    
    //セルの高さを指定
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}

