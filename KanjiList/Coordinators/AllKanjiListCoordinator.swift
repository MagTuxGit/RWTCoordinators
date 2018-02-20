import UIKit

class AllKanjiListCoordinator: Coordinator {
    private let presenter: UINavigationController
    private let allKanjiList: [Kanji]
    private var kanjiListViewController: KanjiListViewController?
    private let kanjiStorage: KanjiStorage
    
    init(presenter: UINavigationController, kanjiStorage: KanjiStorage) {
        self.presenter = presenter
        self.kanjiStorage = kanjiStorage
        allKanjiList = kanjiStorage.allKanji()
    }
    
    func start() {
        let kanjiListViewController = KanjiListViewController(nibName: nil, bundle: nil)
        kanjiListViewController.title = "Kanji list"
        kanjiListViewController.kanjiList = allKanjiList
        kanjiListViewController.delegate = self
        presenter.pushViewController(kanjiListViewController, animated: true)
        
        self.kanjiListViewController = kanjiListViewController
    }
}

extension AllKanjiListCoordinator: KanjiListViewControllerDelegate {
    func kanjiListViewControllerDidSelectKanji(_ selectedKanji: Kanji) {
        
    }
}
