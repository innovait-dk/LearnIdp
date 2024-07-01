## Create the new property

Create a new partial file, containing the list object in the same namespace as the corresponding code-generated list object, and add the desired property.

Example:

```csharp
namespace NorthwindClient.Entity
{
    public partial class EmployeesList
    {
        // Create custom field on List
        // New custom property
        public System.String FullName
        {
            get
            {
                return $"{FirstName} {LastName}";
            }
        }
    }
}
```

## Add the new custom field to the list

Create a partial file for the List control, in the same namespace as the code-generated List control (For the selected entity type), and add the new column.

Example:

```csharp
namespace NorthwindClient.UI.Employees.Controls
{
    public partial class EmployeesList
    {
        partial void AfterInitializeColumns()
        {
            // Create custom field on list:
            // Add the new field, note that EmployeesList is used for the T and TResult generic types to be able to select the new field.
            this.AddColumn<NorthwindClient.Entity.EmployeesList, NorthwindClient.Entity.EmployeesList>(e => e.FullName, e => e.FullName, e => e.FullName);
        }
    }
}
```

## Add caption to the new field
To get the correct column header, open the IAD file, and in Entity Captions add a new row. Compose Name from <EntityName>_<PropertyName> 

Example: EmployeesList_FullName. and enter the desired caption.

 ![image.png](media/opret-custom-felt-på-liste_0.png)