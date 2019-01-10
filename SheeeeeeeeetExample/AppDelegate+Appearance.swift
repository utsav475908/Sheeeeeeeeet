//
//  AppDelegate+Appearance.swift
//  SheeeeeeeeetExample
//
//  Created by Daniel Saidi on 2018-10-08.
//  Copyright © 2018 Daniel Saidi. All rights reserved.
//

/*
 
 This extension isolates how the example app applies colors,
 fonts etc to the example action sheets.
 
 */

import UIKit
import Sheeeeeeeeet

extension AppDelegate {
    
    func applyAppearance() {
        
        let appearance = ActionSheetAppearance.standard
        
        applyCornerRadius()
        applyItemBackgroundColors()
        applyItemSubtitleFonts()
        applyItemTitleFonts()
        
//        appearance.popover.width = 500
        
        appearance.item.textColor = .darkText
        appearance.item.tintColor = .darkGray
        appearance.item.subtitleTextColor = exampleBlue
        
//        appearance.separatorColor = .red
//        appearance.itemsSeparatorColor = .blue
//        appearance.buttonsSeparatorColor = .green
        
        appearance.title.hideSeparator()
        
        appearance.sectionTitle.hideSeparator()
        appearance.sectionTitle.height = 20
        
        appearance.sectionMargin.height = 20
        
        appearance.selectItem.selectedIcon = UIImage(named: "ic_checkmark")
        appearance.selectItem.unselectedIcon = UIImage(named: "ic_empty")
        appearance.selectItem.selectedTintColor = exampleBlue
        appearance.selectItem.selectedTextColor = exampleGreen
        appearance.selectItem.selectedIconTintColor = examplePurple
        
        appearance.singleSelectItem.selectedTintColor = exampleGreen
        appearance.singleSelectItem.selectedTextColor = examplePurple
        appearance.singleSelectItem.selectedIconTintColor = exampleBlue
        
        appearance.multiSelectItem.selectedTintColor = examplePurple
        appearance.multiSelectItem.selectedTextColor = exampleBlue
        appearance.multiSelectItem.selectedIconTintColor = exampleGreen
        
        appearance.multiSelectToggleItem.hideSeparator()
        appearance.multiSelectToggleItem.selectAllTextColor = .lightGray
        appearance.multiSelectToggleItem.deselectAllTextColor = exampleRed
        
        appearance.linkItem.linkIcon = UIImage(named: "ic_arrow_right")
        
        appearance.okButton.textColor = .darkGray
        
        appearance.dangerButton.textColor = examplePink
        
        appearance.cancelButton.textColor = .lightGray
        
        applyLegacyAppearance(appearance)
    }
}


private extension AppDelegate {
    
    func applyCornerRadius() {
        ActionSheetHeaderView.appearance().cornerRadius = 10
        ActionSheetTableView.appearance().cornerRadius = 10
        //ActionSheetTableView.appearance(whenContainedInInstancesOf: [MultiSelectActionSheet.self]).cornerRadius = 20
    }
    
    func applyItemBackgroundColors() {
        //ActionSheetItemCell.appearance().backgroundColor = red
    }
    
    func applyItemSubtitleFonts() {
        ActionSheetItemCell.appearance().subtitleFont = robotoRegular(size: 14)
    }
    
    func applyItemTitleFonts() {
        ActionSheetItemCell.appearance().titleFont = robotoRegular(size: 17)
        ActionSheetLinkItemCell.appearance().titleFont = robotoRegular(size: 17)
        ActionSheetMultiSelectToggleItemCell.appearance().titleFont = robotoMedium(size: 13)
        ActionSheetSectionTitleCell.appearance().titleFont = robotoMedium(size: 13)
        ActionSheetTitleCell.appearance().titleFont = robotoMedium(size: 15)
        ActionSheetOkButtonCell.appearance().titleFont = robotoBlack(size: 17)
        ActionSheetDangerButtonCell.appearance().titleFont = robotoMedium(size: 17)
        ActionSheetCancelButtonCell.appearance().titleFont = robotoRegular(size: 17)
    }
}


// MARK: - Fonts

private extension AppDelegate {
    
    func robotoBlack(size: CGFloat) -> UIFont? {
        return UIFont(name: "Roboto-Black", size: size)
    }
    
    func robotoMedium(size: CGFloat) -> UIFont? {
        return UIFont(name: "Roboto-Medium", size: size)
    }
    
    func robotoRegular(size: CGFloat) -> UIFont? {
        return UIFont(name: "Roboto-Regular", size: size)
    }
}


// MARK: - Colors

private extension AppDelegate {
    
    var exampleBlue: UIColor { return UIColor(hex: 0x0FA2F5) }
    var exampleGreen: UIColor { return UIColor(hex: 0x81c03f) }
    var examplePink: UIColor { return UIColor(hex: 0xec5f72) }
    var examplePurple: UIColor { return UIColor(hex: 0xd9007b) }
    var exampleRed: UIColor { return UIColor(hex: 0xff3333) }
}


// MARK: - Legacy

private extension AppDelegate {
    
    func applyLegacyAppearance(_ appearance: ActionSheetAppearance) {
        applyLegacyItemBackgroundColors(with: appearance)
        applyLegacyItemFonts(with: appearance)
        applyLegacyItemSubtitleFonts(with: appearance)
    }
    
    func applyLegacyItemBackgroundColors(with appearance: ActionSheetAppearance) {
//        appearance.item.backgroundColor = exampleRed
    }
    
    func applyLegacyItemFonts(with appearance: ActionSheetAppearance) {
//        appearance.item.font = robotoRegular(size: 170)
//        appearance.linkItem.font = robotoRegular(size: 170)
//        appearance.title.font = robotoMedium(size: 15)
//        appearance.sectionTitle.font = robotoMedium(size: 13)
//        appearance.multiSelectToggleItem.font = robotoMedium(size: 13)
//        appearance.okButton.font = robotoBlack(size: 17)
//        appearance.dangerButton.font = robotoMedium(size: 17)
//        appearance.cancelButton.font = robotoMedium(size: 17)
    }
    
    func applyLegacyItemSubtitleFonts(with appearance: ActionSheetAppearance) {
//        appearance.item.subtitleFont = robotoRegular(size: 170)
    }
}
