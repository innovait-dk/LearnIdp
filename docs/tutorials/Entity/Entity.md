# Entity

**Requirement**: In various places in the application, the full name of an "Employees" should be displayed.

**Task**: Create a property on the Employees class that can combine FirstName and LastName.

**Implementation**:

1. Select "Entity Framework".
2. Select "Employees".
3. Under "Code Tasks", select "Entity" and click on "Add Code". A file named Employees.cs will now be generated, which can be customized as desired, as illustrated below. (Note the attribute [NotMapped](https://learn.microsoft.com/en-us/dotnet/api/system.componentmodel.dataannotations.schema.notmappedattribute?view=net-7.0))

```cs
    public partial class Employees
    {
        private string _fullName;

        [NotMapped]
        public string FullName
        {
            get { return _fullName; }
            set { _fullName = value; }
        }
    }
```

Now this property is ready to be used in the application. (See an example of customization in [Mapper](../UI/Mapper.md)).

Alternatively, it can also be done this way:

```cs
      [NotMapped]
      public string FullName { get { return $"{FirstName} {LastName}"; } }
```

However, be aware that if the property is used together with AutoMapper (see later under User Interface), Entity Framework will include all fields in the SELECT statement and will generally give poorer performance. Especially if there are "large" fields in the table e.g., bytes/text fields.