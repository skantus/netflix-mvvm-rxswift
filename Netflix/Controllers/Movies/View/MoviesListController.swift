import UIKit
import RxSwift

class MoviesListController: UIViewController {
    
    let moviesViewModel = MoviesViewModel()
    let cellId = "movieCell"
    let disposeBag = DisposeBag()
    var movies = [Movie]()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(logo())
        configureCollectionView()
        getData()
    }
    
    private func getData() {
        return moviesViewModel.getListMoviesData()
            .subscribeOn(MainScheduler.instance)
            .observeOn(MainScheduler.instance)
            .subscribe(
                onNext: { movies in
                    self.movies = movies
                    self.reloadMoviesList()
            }, onError: {error in
                print(error)
            }, onCompleted: {
            }).disposed(by: disposeBag)
    }
    
    private func reloadMoviesList() {
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
}
