#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "MaterialActionSheet.h"
#import "MDCActionSheetController.h"
#import "MaterialActionSheet+Theming.h"
#import "MDCActionSheetController+MaterialTheming.h"
#import "MaterialActivityIndicator.h"
#import "MDCActivityIndicator.h"
#import "CAMediaTimingFunction+MDCAnimationTiming.h"
#import "MaterialAnimationTiming.h"
#import "UIView+MDCTimingFunction.h"
#import "MaterialAppBar.h"
#import "MDCAppBar.h"
#import "MDCAppBarContainerViewController.h"
#import "MDCAppBarNavigationController.h"
#import "MDCAppBarViewController.h"
#import "MaterialAppBar+ColorThemer.h"
#import "MDCAppBarColorThemer.h"
#import "MaterialAppBar+Theming.h"
#import "MDCAppBarViewController+MaterialTheming.h"
#import "MaterialAppBar+TypographyThemer.h"
#import "MDCAppBarTypographyThemer.h"
#import "MaterialAvailability.h"
#import "MDCAvailability.h"
#import "MaterialBanner.h"
#import "MDCBannerView.h"
#import "MaterialBanner+Theming.h"
#import "MDCBannerView+MaterialTheming.h"
#import "MaterialBottomAppBar.h"
#import "MDCBottomAppBarView.h"
#import "MaterialBottomNavigation.h"
#import "MDCBottomNavigationBar.h"
#import "MaterialBottomNavigation+Theming.h"
#import "MDCBottomNavigationBar+MaterialTheming.h"
#import "MaterialBottomSheet.h"
#import "MDCBottomSheetController.h"
#import "MDCBottomSheetPresentationController.h"
#import "MDCBottomSheetTransitionController.h"
#import "MDCSheetState.h"
#import "UIViewController+MaterialBottomSheet.h"
#import "MaterialBottomSheet+ShapeThemer.h"
#import "MDCBottomSheetControllerShapeThemer.h"
#import "MaterialButtonBar.h"
#import "MDCButtonBar.h"
#import "MDCButtonBarButton.h"
#import "MaterialButtons.h"
#import "MDCButton.h"
#import "MDCFlatButton.h"
#import "MDCFloatingButton+Animation.h"
#import "MDCFloatingButton.h"
#import "MDCRaisedButton.h"
#import "MaterialButtons+ButtonThemer.h"
#import "MDCButtonScheme.h"
#import "MDCContainedButtonThemer.h"
#import "MDCTextButtonThemer.h"
#import "MaterialButtons+ColorThemer.h"
#import "MDCButtonColorThemer.h"
#import "MDCContainedButtonColorThemer.h"
#import "MDCFloatingButtonColorThemer.h"
#import "MDCOutlinedButtonColorThemer.h"
#import "MDCTextButtonColorThemer.h"
#import "MaterialButtons+ShapeThemer.h"
#import "MDCButtonShapeThemer.h"
#import "MaterialButtons+Theming.h"
#import "MDCButton+MaterialTheming.h"
#import "MDCFloatingButton+MaterialTheming.h"
#import "MaterialButtons+TitleColorAccessibilityMutator.h"
#import "MDCButtonTitleColorAccessibilityMutator.h"
#import "MaterialButtons+TypographyThemer.h"
#import "MDCButtonTypographyThemer.h"
#import "MaterialCards.h"
#import "MDCCard.h"
#import "MDCCardCollectionCell.h"
#import "UICollectionViewController+MDCCardReordering.h"
#import "MaterialCards+Theming.h"
#import "MDCCard+MaterialTheming.h"
#import "MDCCardCollectionCell+MaterialTheming.h"
#import "MaterialChips.h"
#import "MDCChipCollectionViewCell.h"
#import "MDCChipCollectionViewFlowLayout.h"
#import "MDCChipField.h"
#import "MDCChipView.h"
#import "MaterialChips+Theming.h"
#import "MDCChipView+MaterialTheming.h"
#import "MaterialCollectionCells.h"
#import "MDCCollectionViewCell.h"
#import "MDCCollectionViewTextCell.h"
#import "MaterialCollectionLayoutAttributes.h"
#import "MDCCollectionViewLayoutAttributes.h"
#import "MaterialCollections.h"
#import "MDCCollectionViewController.h"
#import "MDCCollectionViewEditing.h"
#import "MDCCollectionViewEditingDelegate.h"
#import "MDCCollectionViewFlowLayout.h"
#import "MDCCollectionViewStyling.h"
#import "MDCCollectionViewStylingDelegate.h"
#import "MaterialDialogs.h"
#import "MDCAlertController+ButtonForAction.h"
#import "MDCAlertController.h"
#import "MDCAlertControllerView.h"
#import "MDCDialogPresentationController.h"
#import "MDCDialogTransitionController.h"
#import "UIViewController+MaterialDialogs.h"
#import "MaterialDialogs+ColorThemer.h"
#import "MDCAlertColorThemer.h"
#import "MaterialDialogs+Theming.h"
#import "MDCAlertController+MaterialTheming.h"
#import "MDCDialogPresentationController+MaterialTheming.h"
#import "MaterialDialogs+TypographyThemer.h"
#import "MDCAlertTypographyThemer.h"
#import "MaterialElevation.h"
#import "MDCElevatable.h"
#import "MDCElevationOverriding.h"
#import "UIColor+MaterialElevation.h"
#import "UIView+MaterialElevationResponding.h"
#import "MaterialFeatureHighlight.h"
#import "MaterialFeatureHighlightStrings.h"
#import "MaterialFeatureHighlightStrings_table.h"
#import "MDCFeatureHighlightView.h"
#import "MDCFeatureHighlightViewController.h"
#import "MaterialFeatureHighlight+ColorThemer.h"
#import "MDCFeatureHighlightColorThemer.h"
#import "MaterialFeatureHighlight+FeatureHighlightAccessibilityMutator.h"
#import "MDCFeatureHighlightAccessibilityMutator.h"
#import "MaterialFlexibleHeader.h"
#import "MDCFlexibleHeaderContainerViewController.h"
#import "MDCFlexibleHeaderView+ShiftBehavior.h"
#import "MDCFlexibleHeaderView.h"
#import "MDCFlexibleHeaderViewController.h"
#import "MaterialFlexibleHeader+CanAlwaysExpandToMaximumHeight.h"
#import "MDCFlexibleHeaderView+canAlwaysExpandToMaximumHeight.h"
#import "MaterialHeaderStackView.h"
#import "MDCHeaderStackView.h"
#import "MaterialHeaderStackView+ColorThemer.h"
#import "MDCHeaderStackViewColorThemer.h"
#import "MaterialInk.h"
#import "MDCInkGestureRecognizer.h"
#import "MDCInkTouchController.h"
#import "MDCInkView.h"
#import "MaterialLibraryInfo.h"
#import "MDCLibraryInfo.h"
#import "MaterialList.h"
#import "MDCBaseCell.h"
#import "MDCSelfSizingStereoCell.h"
#import "MaterialList+Theming.h"
#import "MDCBaseCell+MaterialTheming.h"
#import "MDCSelfSizingStereoCell+MaterialTheming.h"
#import "MaterialNavigationBar.h"
#import "MDCNavigationBar.h"
#import "MaterialNavigationBar+ColorThemer.h"
#import "MDCNavigationBarColorThemer.h"
#import "MaterialNavigationBar+TypographyThemer.h"
#import "MDCNavigationBarTypographyThemer.h"
#import "MaterialNavigationDrawer.h"
#import "MDCBottomDrawerHeader.h"
#import "MDCBottomDrawerPresentationController.h"
#import "MDCBottomDrawerState.h"
#import "MDCBottomDrawerTransitionController.h"
#import "MDCBottomDrawerViewController.h"
#import "MaterialNavigationDrawer+ColorThemer.h"
#import "MDCBottomDrawerColorThemer.h"
#import "MaterialOverlayWindow.h"
#import "MDCOverlayWindow.h"
#import "MaterialPageControl.h"
#import "MDCPageControl.h"
#import "MaterialPalettes.h"
#import "MDCPalettes.h"
#import "MaterialProgressView.h"
#import "MDCProgressView.h"
#import "MaterialProgressView+Theming.h"
#import "MDCProgressView+MaterialTheming.h"
#import "MaterialRipple.h"
#import "MDCRippleTouchController.h"
#import "MDCRippleView.h"
#import "MDCStatefulRippleView.h"
#import "MaterialShadowElevations.h"
#import "MDCShadowElevations.h"
#import "MaterialShadowLayer.h"
#import "MDCShadowLayer.h"
#import "MaterialShapeLibrary.h"
#import "MDCCornerTreatment+CornerTypeInitalizer.h"
#import "MDCCurvedCornerTreatment.h"
#import "MDCCurvedRectShapeGenerator.h"
#import "MDCCutCornerTreatment.h"
#import "MDCPillShapeGenerator.h"
#import "MDCRoundedCornerTreatment.h"
#import "MDCSlantedRectShapeGenerator.h"
#import "MDCTriangleEdgeTreatment.h"
#import "MaterialShapes.h"
#import "MDCCornerTreatment.h"
#import "MDCEdgeTreatment.h"
#import "MDCPathGenerator.h"
#import "MDCRectangleShapeGenerator.h"
#import "MDCShapedShadowLayer.h"
#import "MDCShapedView.h"
#import "MDCShapeGenerating.h"
#import "MaterialSlider.h"
#import "MDCSlider.h"
#import "MaterialSlider+ColorThemer.h"
#import "MDCSliderColorThemer.h"
#import "MaterialSnackbar.h"
#import "MDCSnackbarAlignment.h"
#import "MDCSnackbarManager.h"
#import "MDCSnackbarMessage.h"
#import "MDCSnackbarMessageView.h"
#import "MaterialSnackbar+FontThemer.h"
#import "MDCSnackbarFontThemer.h"
#import "MaterialSnackbar+TypographyThemer.h"
#import "MDCSnackbarTypographyThemer.h"
#import "MaterialTabs.h"
#import "MDCTabBar.h"
#import "MDCTabBarAlignment.h"
#import "MDCTabBarDisplayDelegate.h"
#import "MDCTabBarExtendedAlignment.h"
#import "MDCTabBarIndicatorAttributes.h"
#import "MDCTabBarIndicatorContext.h"
#import "MDCTabBarIndicatorTemplate.h"
#import "MDCTabBarItemAppearance.h"
#import "MDCTabBarSizeClassDelegate.h"
#import "MDCTabBarTextTransform.h"
#import "MDCTabBarUnderlineIndicatorTemplate.h"
#import "MDCTabBarViewController.h"
#import "MaterialTabs+Theming.h"
#import "MDCTabBar+MaterialTheming.h"
#import "MaterialTabs+TypographyThemer.h"
#import "MDCTabBarTypographyThemer.h"
#import "MaterialTextControls+BaseTextAreas.h"
#import "MDCBaseTextArea.h"
#import "MaterialTextControls+BaseTextFields.h"
#import "MDCBaseTextField.h"
#import "MaterialTextControls+Enums.h"
#import "MDCTextControlLabelBehavior.h"
#import "MDCTextControlState.h"
#import "MaterialTextControls+FilledTextAreas.h"
#import "MDCFilledTextArea.h"
#import "MaterialTextControls+FilledTextAreasTheming.h"
#import "MDCFilledTextArea+MaterialTheming.h"
#import "MaterialTextControls+FilledTextFields.h"
#import "MDCFilledTextField.h"
#import "MaterialTextControls+FilledTextFieldsTheming.h"
#import "MDCFilledTextField+MaterialTheming.h"
#import "MaterialTextControls+OutlinedTextAreas.h"
#import "MDCOutlinedTextArea.h"
#import "MaterialTextControls+OutlinedTextAreasTheming.h"
#import "MDCOutlinedTextArea+MaterialTheming.h"
#import "MaterialTextControls+OutlinedTextFields.h"
#import "MDCOutlinedTextField.h"
#import "MaterialTextControls+OutlinedTextFieldsTheming.h"
#import "MDCOutlinedTextField+MaterialTheming.h"
#import "MaterialTextFields.h"
#import "MDCIntrinsicHeightTextView.h"
#import "MDCMultilineTextField.h"
#import "MDCMultilineTextInputDelegate.h"
#import "MDCTextField.h"
#import "MDCTextFieldPositioningDelegate.h"
#import "MDCTextInput.h"
#import "MDCTextInputBorderView.h"
#import "MDCTextInputCharacterCounter.h"
#import "MDCTextInputController.h"
#import "MDCTextInputControllerBase.h"
#import "MDCTextInputControllerFilled.h"
#import "MDCTextInputControllerFloatingPlaceholder.h"
#import "MDCTextInputControllerFullWidth.h"
#import "MDCTextInputControllerLegacyDefault.h"
#import "MDCTextInputControllerLegacyFullWidth.h"
#import "MDCTextInputControllerOutlined.h"
#import "MDCTextInputControllerOutlinedTextArea.h"
#import "MDCTextInputControllerUnderline.h"
#import "MDCTextInputUnderlineView.h"
#import "MaterialTextFields+ColorThemer.h"
#import "MDCFilledTextFieldColorThemer.h"
#import "MaterialTextFields+Theming.h"
#import "MDCTextInputControllerFilled+MaterialTheming.h"
#import "MDCTextInputControllerOutlined+MaterialTheming.h"
#import "MDCTextInputControllerUnderline+MaterialTheming.h"
#import "MaterialThemes.h"
#import "MDCColorScheme.h"
#import "MDCFontScheme.h"
#import "MDCTonalColorScheme.h"
#import "MDCTonalPalette.h"
#import "MaterialTypography.h"
#import "MDCFontScaler.h"
#import "MDCFontTextStyle.h"
#import "MDCTypography.h"
#import "UIFont+MaterialScalable.h"
#import "UIFont+MaterialSimpleEquality.h"
#import "UIFont+MaterialTypography.h"
#import "UIFontDescriptor+MaterialTypography.h"
#import "MaterialApplication.h"
#import "UIApplication+MDCAppExtensions.h"
#import "MaterialColor.h"
#import "UIColor+MaterialBlending.h"
#import "UIColor+MaterialDynamic.h"
#import "MaterialIcons.h"
#import "MDCIcons+BundleLoader.h"
#import "MDCIcons.h"
#import "MaterialIcons+ic_arrow_back.h"
#import "MaterialIcons+ic_check.h"
#import "MaterialIcons+ic_check_circle.h"
#import "MaterialIcons+ic_chevron_right.h"
#import "MaterialIcons+ic_color_lens.h"
#import "MaterialIcons+ic_help_outline.h"
#import "MaterialIcons+ic_info.h"
#import "MaterialIcons+ic_more_horiz.h"
#import "MaterialIcons+ic_radio_button_unchecked.h"
#import "MaterialIcons+ic_reorder.h"
#import "MaterialIcons+ic_settings.h"
#import "MaterialKeyboardWatcher.h"
#import "MDCKeyboardWatcher.h"
#import "MaterialMath.h"
#import "MDCMath.h"
#import "MaterialOverlay.h"
#import "MDCOverlayImplementor.h"
#import "MDCOverlayObserver.h"
#import "MDCOverlayTransitioning.h"
#import "MaterialTextControlsPrivate+BaseStyle.h"
#import "MDCTextControlStyleBase.h"
#import "MDCTextControlVerticalPositioningReferenceBase.h"
#import "MaterialTextControlsPrivate+FilledStyle.h"
#import "MDCTextControlStyleFilled.h"
#import "MDCTextControlVerticalPositioningReferenceFilled.h"
#import "MaterialTextControlsPrivate+OutlinedStyle.h"
#import "MDCTextControlStyleOutlined.h"
#import "MDCTextControlVerticalPositioningReferenceOutlined.h"
#import "MaterialTextControlsPrivate+Shared.h"
#import "MDCTextControl.h"
#import "MDCTextControlAssistiveLabelDrawPriority.h"
#import "MDCTextControlAssistiveLabelView.h"
#import "MDCTextControlAssistiveLabelViewLayout.h"
#import "MDCTextControlColorViewModel.h"
#import "MDCTextControlGradientManager.h"
#import "MDCTextControlLabelAnimation.h"
#import "MDCTextControlLabelPosition.h"
#import "MDCTextControlVerticalPositioningReference.h"
#import "UIBezierPath+MDCTextControlStyle.h"
#import "MaterialThumbTrack.h"
#import "MDCNumericValueLabel.h"
#import "MDCThumbTrack.h"
#import "MDCThumbView.h"
#import "MaterialUIMetrics.h"
#import "MDCLayoutMetrics.h"
#import "MaterialColorScheme.h"
#import "MDCLegacyColorScheme.h"
#import "MDCLegacyTonalColorScheme.h"
#import "MDCLegacyTonalPalette.h"
#import "MDCSemanticColorScheme.h"
#import "MaterialContainerScheme.h"
#import "MDCContainerScheme.h"
#import "MaterialShapeScheme.h"
#import "MDCShapeCategory.h"
#import "MDCShapeScheme.h"
#import "MaterialTypographyScheme.h"
#import "MDCLegacyFontScheme.h"
#import "MDCTypographyScheme.h"
#import "MaterialTypographyScheme+BasicFontScheme.h"
#import "MDCBasicFontScheme.h"
#import "MaterialTypographyScheme+Scheming.h"
#import "MDCTypographyScheming.h"

FOUNDATION_EXPORT double MaterialComponentsVersionNumber;
FOUNDATION_EXPORT const unsigned char MaterialComponentsVersionString[];

