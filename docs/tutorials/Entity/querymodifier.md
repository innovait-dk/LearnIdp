# QueryModifier

QueryModifier is used to set a "global" filter on IQueryable when the EntityService retrieves data from the database.
The QueryModifier is used in all methods on the EntityService.

**Requirement**: The application should only display Products that are not "Discontinued"

**Task**: Create a partial class for the code-generated ProductsQueryModifier and override the "Modify" method.

**Execution**: 

1. Select "Entity Framework".
2. Select "Products".
3. Under "Code Tasks", choose "Entity QueryModifier" and click on "Add Code". A ProductsQueryModifier.cs file will now be generated, which can be customized as desired, as shown below. 

```cs
    public partial class ProductsQueryModifier 
    {
        public override IQueryable<Products> Modify(IQueryable<Products> query)
        {
            return query.Where(e => e.Discontinued == false);
        }
    }
```

A QueryModifier can also be used, for example, to handle security for an entity. So, for example, some form of security service or similar is injected into the constructor, and then the Where clause is set depending on what the particular user has access to.