//
//  DetailViewController.swift
//  movie_searcher
//
//  Created by Juan Bravo on 2/13/18.
//  Copyright © 2018 Juan Bravo. All rights reserved.
//

import UIKit
import AlamofireImage

class DetailViewController: UIViewController {

    @IBOutlet weak var backDropImage: UIImageView!
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var overView: UILabel!
    
    var movie: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movie = movie{
            titleLabel.text = movie["title"] as? String
            releaseDate.text = movie["release_date"] as? String
            overView.text = movie["overview"] as? String
            let backdropPath = movie["backdrop_path"] as? String
            let posterPath = movie ["poster_path"] as? String
            let baseURL = "http://image.tmdb.org/t/p/w500"
            let backdropURL = URL(string: baseURL + backdropPath!)!
            backDropImage.af_setImage(withURL: backdropURL)
            
            let posterURL = URL(string: baseURL + posterPath!)!
            posterImage.af_setImage(withURL: posterURL)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
