//
//  HeroTableViewController.swift
//  HerosApp
//
//  Created by Peter Gicking on 5/21/16.
//  Copyright © 2016 Peter Gicking. All rights reserved.
//

import UIKit

class HeroTableViewController: UITableViewController {

    //MARK: Properties
    
    var heros = [Hero]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        loadHeros()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func loadSampleHeros(){
        let photo1 = UIImage(named: "RapGod")!
        let hero1 = Hero(name: "RapGod", portrait: photo1)!
        
        let photo2 = UIImage(named: "theMemester")!
        let hero2 = Hero(name: "The Memester", portrait: photo2)!
        
        let photo3 = UIImage(named: "old6Cans")!
        let hero3 = Hero(name: "Ole rikky 6 cans", portrait: photo3)!
        
        heros += [hero1, hero2, hero3]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heros.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "HeroTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! HeroTableViewCell

        cell.backgroundColor = UIColor.whiteColor()
        
        let hero = heros[indexPath.row]
        
        cell.heroName.text = hero.name
        cell.heroPortrait.image = hero.portrait
        
        return cell
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let vw = UIView()
        vw.backgroundColor = UIColor.whiteColor()
        
        return vw
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        let msg = "You clicked on " + heros[indexPath.row].name
        //place holder code
        let alertController = UIAlertController(title: "ALERT", message:
            msg, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    
    }

    func loadHeros(){
        //Hard coded values :(
        let abathur = Hero(name: "Abathur", portrait: UIImage(named: "abathur"))!
        let anubarak = Hero(name: "Anubarak", portrait: UIImage(named: "anubarak"))!
        let artanis = Hero(name: "Artanis", portrait: UIImage(named: "artanis"))!
        let arthas = Hero(name: "Arthas", portrait: UIImage(named: "arthas"))!
        let azmodan = Hero(name: "Azmodan", portrait: UIImage(named: "azmodan"))!
        let brightwing = Hero(name: "Brightwing", portrait: UIImage(named: "brightwing"))!
        let chen = Hero(name: "Chen", portrait: UIImage(named: "chen"))!
        let cho = Hero(name: "Cho", portrait: UIImage(named: "cho"))!
        let chromie = Hero(name: "Chromie", portrait: UIImage(named: "chromie"))!
        let dehaka = Hero(name: "Dehaka", portrait: UIImage(named: "dehaka"))!
        let diablo = Hero(name: "Diablo", portrait: UIImage(named: "diablo"))!
        let ETC = Hero(name: "E.T.C.", portrait: UIImage(named: "elite_tauren_chieftain"))!
        let falstad = Hero(name: "Falstad", portrait: UIImage(named: "falstad"))!
        let gall = Hero(name: "Gall", portrait: UIImage(named: "gall"))!
        let gazlowe = Hero(name: "Gazlowe", portrait: UIImage(named: "gazlowe"))!
        let greymane = Hero(name: "Greymane", portrait: UIImage(named: "greymane"))!
        let illidan = Hero(name: "Illidan", portrait: UIImage(named: "illidan"))!
        let jaina = Hero(name: "Jaina", portrait: UIImage(named: "jaina"))!
        let johanna = Hero(name: "Johanna", portrait: UIImage(named: "johanna"))!
        let kaelthas = Hero(name: "Kael'thas", portrait: UIImage(named: "kaelthas"))!
        let kerrigan = Hero(name: "Kerrigan", portrait: UIImage(named: "kerrigan"))!
        let kharazim = Hero(name: "Kharazim", portrait: UIImage(named: "kharazim"))!
        let leoric = Hero(name: "Leoric", portrait: UIImage(named: "leoric"))!
        let li_li = Hero(name: "Li Li", portrait: UIImage(named: "li_li"))!
        let li_ming = Hero(name: "Li Ming", portrait: UIImage(named: "li_ming"))!
        let lunara = Hero(name: "Lunara", portrait: UIImage(named: "lunara"))!
        let malfurion = Hero(name: "Malfurion", portrait: UIImage(named: "malfurion"))!
        let morales = Hero(name: "Lt. Morales", portrait: UIImage(named: "morales"))!
        let muradin = Hero(name: "Muradin", portrait: UIImage(named: "muradin"))!
        let murky = Hero(name: "Murky", portrait: UIImage(named: "murky"))!
        let nazeebo = Hero(name: "Nazeebo", portrait: UIImage(named: "nazeebo"))!
        let nova = Hero(name: "Nova", portrait: UIImage(named: "nova"))!
        let raynor = Hero(name: "Raynor", portrait: UIImage(named: "raynor"))!
        let rehgar = Hero(name: "Rehgar", portrait: UIImage(named: "rehgar"))!
        let rexxar = Hero(name: "Rexxar", portrait: UIImage(named: "rexxar"))!
        let hammer = Hero(name: "Sgt. Hammer", portrait: UIImage(named: "sergeant_hammer"))!
        let sonya = Hero(name: "Sonya", portrait: UIImage(named: "sonya"))!
        let stiches = Hero(name: "Sitches", portrait: UIImage(named: "stitches"))!
        let sylvana = Hero(name: "Sylvanas", portrait: UIImage(named: "sylvanas"))!
        let tassadar = Hero(name: "Tassadar", portrait: UIImage(named: "tassadar"))!
        let butcher = Hero(name: "The Butcher", portrait: UIImage(named: "the_butcher"))!
        let tlv = Hero(name: "The Lost Vikings", portrait: UIImage(named: "the_lost_vikings"))!
        let thrall = Hero(name: "Thrall", portrait: UIImage(named: "thrall"))!
        let tracer = Hero(name: "Tracer", portrait: UIImage(named: "tracer"))!
        let tychus = Hero(name: "Tychus", portrait: UIImage(named: "tychus"))!
        let tyrande = Hero(name: "Tyrande", portrait: UIImage(named: "tyrande"))!
        let uther = Hero(name: "Uther", portrait: UIImage(named: "uther"))!
        let valla = Hero(name: "Valla", portrait: UIImage(named: "valla"))!
        let xul = Hero(name: "Xul", portrait: UIImage(named: "xul"))!
        let zagara = Hero(name: "Zagara", portrait: UIImage(named: "zagara"))!
        let zeratul = Hero(name: "Zeratul", portrait: UIImage(named: "zeratul"))!

        heros += [abathur, anubarak, artanis, arthas, azmodan, brightwing, chen, cho, chromie,
                    dehaka, diablo, ETC, falstad, gall, gazlowe, greymane, illidan, jaina, johanna,
                    kaelthas, kerrigan, kharazim, leoric, li_li, li_ming, lunara, malfurion, morales,
                    muradin, murky, nazeebo, nova, raynor, rehgar, rexxar, hammer, sonya, stiches,
                    sylvana, tassadar, butcher, tlv, thrall, tracer, tychus, tyrande, uther, valla,
                    xul, zagara, zeratul]
    

    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
