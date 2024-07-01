## 2024.2.57

* Added IQueryModifier to EntityService.
* Added Code task "Entity QueryModifier" to "Entity Framework" in the Designer.
* Fixed bug in ApplicationShutdownService.

## 2024.2.51

* Refactored the Framework to use EntityService instead of UnitOfWork. UnitOfWork/repositories have been completely removed.
* Added REST client and server to the Framework, allowing EntityServices to use REST APIs.

## 2023.10.37

* Bug in CG Admin module ("no outlookbar" causes build error).

## 2023.10.36

* FluentValidation: Incorrect message for 3 validations.

## 2023.10.35

* Improved startup wizard.
* Changed color of the Framework's drawings (menu images). Colors are now also keys in the resource dictionary.
* Quickfind does not display properly at startup.
* Telerik: windows do not show min/max/close buttons.
* IAD file is not saved. It is not marked as "dirty" the first time.
* CG-Mapper causes build error for the method 'ForAllOtherMembers' for .net6+.

## 2023.10.8

* Bugfix: Incorrect code is CG in Entity.

## 2023.10.7

* 14813 Implement checkbox filter.

## 2023.10.3

* 14815 Implement IHost/HostApplicationBuilder in Framework.

## 2023.9.50

* 14782 Add Code - Comprehensive overview of all "codeTemplates".
* 14808 New code item templates (user and appSettings).
* 14807 Better headers/descriptions for code item templates.
* 14810 Add support for SQL Application Roles.
* 14809 Menu: refactor tooltip.

## 2023.9.45

* Use XAML images instead of PNGs internally in the framework. (All images can now be replaced via the resource dictionary).

## 2023.9.40

* 14806 Upgrade various NuGet packages (if using offline NuGet packages, they need to be updated).
* 14805 Update samples.
* 14803 Option to change icon on the filter button.
* 14801 After upgrading to the new version, the option to use custom button icons disappeared for some ribbon buttons.

## 2023.9.31

* 14798 Adjust comments in item code templates.
* 14797 WaterMark does not work in IAD caption designer.
* 14796 Register custom controls instead of creating entirely new custom views.
* 14795 Incorrect CG in factories: public partial class SagEntityFactory.cs.
* 14794 TitleImage / Header Image - there should only be one property.
* 14793 Image provider should be able to use XAML images.
* 14792 Default Dialogsize on screens for each entity should be changeable.
* 14791 Partial for UIProfiles.
* 14790 Captions do not translate on lists.
* 14789 Remove the use of GetCustomControl showdetail.
* 14788 When creating a CustomEditView, the constructor does not get the same name as the class.
* 14785 IAD: Toolbar should hide buttons/groups/tabs.
* 14781 UI - UI designer (Preview) should be completed.
* 14761 Release notes.
* 14758 Options for Wizard (first time).
* 14757 Selected Tab - functionality.
* 14756 MenuModel should use an enum for Size.
