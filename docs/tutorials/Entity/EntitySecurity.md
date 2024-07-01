#Entity Security

**Requirement**: Categories should not be deletable in the application.

**Task**: Set entity security "CanDelete" to false.

**Execution**: 

1. Select "Entity Framework".
2. Select "Categories".
3. Under "Code Tasks", choose "Entity Security" and click on "Add Code". A file named CategoriesSecurity.cs will now be generated, which can be customized as desired, as illustrated below.

```cs
     public partial class CategoriesSecurity
    {
        public override bool CanDelete()
        {
            return false;
        }
    }
```

Now the delete button will not be displayed in the toolbar.