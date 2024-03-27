//
//  SportsHomeView.swift
//  Sports
//
//  Created by Ali Siddiqui on 3/23/24.
//

import UIKit

class SportsHomeView: UIView, UICollectionViewDelegate, UICollectionViewDataSource  {
    private var headerOptionCollectionView: UICollectionView?

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMenuBar()
        addSubview(headerOptionCollectionView!)
        NSLayoutConstraint.activate([
            headerOptionCollectionView!.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            headerOptionCollectionView!.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 45),
            headerOptionCollectionView!.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor),
            headerOptionCollectionView!.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    private func setupMenuBar() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        //  layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
        layout.itemSize = CGSize(width: 80, height: 45)
        
        let headerOptionCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        self.headerOptionCollectionView = headerOptionCollectionView
        headerOptionCollectionView.backgroundColor = .systemBackground
        headerOptionCollectionView.translatesAutoresizingMaskIntoConstraints = false
                
        headerOptionCollectionView.register(menuCollectionViewCell.self, forCellWithReuseIdentifier: "menuCollectionViewCell")
        headerOptionCollectionView.delegate = self
        headerOptionCollectionView.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = headerOptionCollectionView!.dequeueReusableCell(withReuseIdentifier: "menuCollectionViewCell", for: indexPath) as? menuCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(index: indexPath.row)
        return cell
    }

}
