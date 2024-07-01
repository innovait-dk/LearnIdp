# Log in the application

Innova Framework uses [Microsoft.Extensions.Logging](https://learn.microsoft.com/en-us/dotnet/core/extensions/logging?tabs=command-line) for logging.

This allows the use of various 3rd party logging providers to perform the actual logging (to text files, database, web service, etc.). [See examples of providers here.](https://learn.microsoft.com/en-us/dotnet/core/extensions/logging-providers#third-party-logging-providers)

When there is a need to log, inject ILogger in the constructor.

**Requirement**: When the button in CategoriesShowDialogMenu is clicked, it should be logged.

**Task**: Inject ILogger and call LogInformation in onExecute.

**Execution**: 
```cs
    public class CategoriesShowDialogMenu:MenuModelEntity<Northwind.Data.Entity.CategoriesShow>
    {
        private readonly IWindowDialogService _windowDialogService;
        private readonly ILogger<CategoriesShowDialogMenu> _logger;

        public CategoriesShowDialogMenu(IEventAggregator eventAggregator,
                                        IWindowDialogService windowDialogService,
                                        ILogger<CategoriesShowDialogMenu> logger) :base(eventAggregator)
        {
            _windowDialogService = windowDialogService;
            _logger = logger;

            Header = "Show dialog";
            Description = "Click to show dialog";
            GroupName = MenuGroupNames.Functions; 
            SetImages(Innova.Prism.Library.Styles.WindowsMenuImages.gear);
            Command = new LogDelegateCommand(ExecuteCategoriesShowDialogMenu, CanExecuteCategoriesShowDialogMenu);
            
        }

        private bool CanExecuteCategoriesShowDialogMenu()
        {
            return this.Entity != null;
        }
         
        private void ExecuteCategoriesShowDialogMenu()
        {
            _logger.LogInformation("Button clicked");
            _windowDialogService.ShowInformation($"{this.Entity.CategoryName} - dialog is clicked.");
            
        }
    }
```
    
When the button is clicked, it is logged:

![Alt text](media/log_application.png)

