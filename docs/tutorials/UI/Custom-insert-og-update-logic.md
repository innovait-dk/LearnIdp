# Custom insert and update logic

If you want to change the logic that occurs when, for example, adding or updating an entity, it can be done at different levels - depending on what you want to achieve.
In general, however, it is recommended to create the logic as far "down" as possible, where the hierarchy is the entity at the bottom, followed by entity service, view model service, view model, and view.

## Logic changed in EntityService
If, for example, you want to ensure that every time a `Customers` is added, the `CompanyName` is spelled with a capital letter, it could be done in the following way:

```csharp
//Custom insert logic
    public partial class CustomersEntityService
    {
        protected override Task<List<PrimaryKeys<Customers>>> InsertToDatabase(List<Customers> entities, CancellationToken cancellationToken = default)
        {
            entities.ForEach(e => e.CompanyName = e.CompanyName?.ToUpper());
            return base.InsertToDatabase(entities, cancellationToken);
        }
    }
```

## Logic changed in ViewModelService

On the other hand, if you want to send a fax every time a `Customers` has been updated, it could be done:

```csharp
//Custom update logic
    public partial class CustomersEditViewModelService
    {
        public override Task<PrimaryKeys<Data.Entity.Customers>> Update(CustomersEdit entity, CancellationToken cancellationToken = default)
        {
            return base.Update(entity, cancellationToken);
            //Call service that sends fax with information about the updated Customer
        }
    }
```