## 2024.10

- More API-documentation
- Added OutlookBar Service. Read more [Here](../tutorials/UI/outlookbar.md)
- Various bug-fixes

> [!IMPORTANT]  
> Breaking change
> 
> If you have used Administration-module you should replace it with the new Administration-module. Backup your Administration folder, delete the folder and CG a new AdministrationModule in the Designer under code-tasks (User Interface).


## 2024.8

The main focus for this version has been creating a foundation for enhancing the documentation. So now the learn-website has API-documentation and we have switch to using DocFX for generating our documentation.

We have made some small changes in the Designer/code generated (CG):

- CG: Mainviewmodel is now injected with interfaces.
- CG: Implemented abstract and base-viewmodels for show, list and search, so you can override methodes instead using the CG-partials methodes.
- Designer: Hyperlink button can publish a general event to be used in your code. (instead of just userlookup og entitylookup)
- Bug: Designer does not save "order by" and tostring if a custom field is used.

> [!IMPORTANT]  
> Breaking change
> 
> Now that we are using abstract and base-viewmodels we are moving away from using partial methods (expect for Initialize() ).
> So if you have used partials methods for example with LinkButtons, those methods are now CG in the abstract viewmodel as protected virtual
> and you need to override them instead of using partial.

## 2024.6

The first AppExtensions has landed. This version includes the following AppExtensions:

-	[Logging](../appextensions/log/index.md)
-	[Security](../appextensions/security/index.md)

All AppExtensions are created with IDP and are fully opensourced (for customers). And yes, you can make your own AppExtensions.

### Designer

- Database: The connectionstring is no longer in the iad-file. It uses the connectionstring in the app.config. [See here](../gettingstarted/guide//elements/database.md)
- UI Designer now supports drag-n-drop for fields between groups.
- Checkboxlist, radiobuttonlist and comboxes has a “DependentField” property so for example if you have two comboboxes and you want the second combox’s items to be depended on the selection in the first combox then you should use this new property.
- Radiobutton and Checkboxlist’s orientation can be configured with horizontal or vertical.
- Various bug fixes and optimizations

### Framework

- **Breaking change** Implemented ApplicationBuilder which are used in the app.xaml.cs to load services, appextension and so on. 
- New Revision UI
- Added support for Swedish and Norwegian culture in the UI (beside English and Danish).
- Various bug fixes and optimizations

>[!IMPORTANT]
>Breaking change
> 
>How to Upgrade from 2024.2.57:
> 
>Backup your app.xaml and app.xaml.cs if you have made custom changes.
> 
>Run code-task “AppBase” (which will replace app.xaml/app.xaml.cs)


