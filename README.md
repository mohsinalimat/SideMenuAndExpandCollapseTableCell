# SideMenuAndExpandCollapseTableCell


### Add the sideMenu on CustomButton ###
```
ButtonObj.addTarget(self.revealViewController(), action: #selector(self.revealViewController().revealToggle(_:)), for: .touchUpInside)
self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
```

### Expand And Collapse TableViewCell in tableView ###
```
 @IBOutlet weak var SideTableView: UITableView!
    var SelectedData = Array<Int>()
    var HeaderArray = Array<String>()
    var CellArray = Array<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        SideTableView.delegate=self
        SideTableView.dataSource=self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         SideTableView.register(UINib.init(nibName: "CellHeaderClass", bundle: Bundle.main), forHeaderFooterViewReuseIdentifier: "CellHeaderClass")
        
        HeaderArray.append("1")
        HeaderArray.append("2")
        HeaderArray.append("3")
        
        CellArray.append("ABC")
        CellArray.append("DEF")
        CellArray.append("XYZ")
    }

    
    //TableView Delegate And DataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return HeaderArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if !SelectedData.contains(section) {
            return 0
        }
        return CellArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CellCustomTableViewCell
        cell.lblCellTExt.text = CellArray[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let View = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CellHeaderClass") as! CellHeaderClass
        
        View.HeaderButton.addTarget(self, action: #selector(HeaderButtonTap(_:)), for: .touchUpInside)
        View.HeaderButton.tag = section
        View.HeaderButton.setTitle(HeaderArray[section], for: .normal)
        View.HeaderButton.setTitleColor(UIColor.black, for: .normal)
        View.HeaderButton.backgroundColor = UIColor.green
        View.backgroundColor = UIColor.white
        View.contentView.backgroundColor = UIColor.yellow
        return View
    }
    
    
    //HeaderClick
    func HeaderButtonTap(_ sender:UIButton) -> Void {
        print(sender.tag)
        if SelectedData.contains(sender.tag) {
           let index = SelectedData.index(of: sender.tag)
            SelectedData.remove(at: index!)
        }else{
        SelectedData.append(sender.tag)
        }
        SideTableView.reloadData()
    }
```
