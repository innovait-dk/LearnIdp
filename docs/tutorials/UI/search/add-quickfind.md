# Create QuickFind

QuickFinds are made in the shell's viewmodel.

Below is shown how to create QuickFinds in two different ways in the constructor of MainViewModel.cs.

## Example 1 - QuickFind on a field
The first example shows how to create a QuickFind on the `CompanyName` field of the `Customers` entity.

In the designer:

Select "User Interface"

Select "Customers"

Select the "CompanyName" field

In "Code Tasks" select "QuickFind" and click "Add Code". A QuickFindCompanyName.cs file is now generated, which can be freely adapted as shown below.

Implement the code as described in the TODO: comment.
```csharp
  //TODO: this should be added to the servicecollection like this:
  //serviceCollection.AddTransient<Innova.Prism.Library.Search.ISearchItemViewModel, QuickFindCompanyName>();
  //or in the search module like this:
      //public override void RegisterTypes(IContainerRegistry containerRegistry)
      //{
      //   base.RegisterTypes(containerRegistry);
      //   containerRegistry.Register<Innova.Prism.Library.Search.ISearchItemViewModel, QuickFindCompanyName>("QuickFindCompanyName");
      //}

  public class QuickFindCompanyName : QuickFindSearchItemViewModel<Northwind.Data.Entity.Customers>, ISearchItemViewModel
  {
      public QuickFindCompanyName(IQuickFindNavigationService<Northwind.Data.Entity.Customers> findNavigationService) : base(findNavigationService, e => e.CompanyName)
      {

      }

      public override Expression<Func<Northwind.Data.Entity.Customers, bool>> GetSearchExpression()
      {
          return e => e.CompanyName.Contains(this.SearchText);
      }
  }
```

## Example 2 - QuickFind on multiple fields
The second example shows how to create a QuickFind that searches on multiple fields of the `Employees` entity.

In the designer:

Select "User Interface"

Select "Employees"

Select the "LastName" field

In "Code Tasks" select "QuickFind" and click "Add Code". A QuickFindLastName.cs file is now generated, which can be freely adapted as shown below.

```csharp
    public class QuickFindNames : QuickFindSearchItemViewModel<Northwind.Data.Entity.Employees>, ISearchItemViewModel
    {
        public QuickFindNames(IQuickFindNavigationService<Northwind.Data.Entity.Employees> findNavigationService) : 
            base(findNavigationService, e => e.LastName)
        {
            this.Title = "Names";
        }

        public override Expression<Func<Northwind.Data.Entity.Employees, bool>> GetSearchExpression()
        {
            return e =>
            e.LastName.Contains(this.SearchText) ||
            e.FirstName.Contains(this.SearchText);
        }
    }
```