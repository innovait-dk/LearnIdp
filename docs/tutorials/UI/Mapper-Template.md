# Mapper - Custom List-property

From the previous example [Mapper](Mapper.md), a custom property was created on the data entity and then that property was used throughout the application.

It may be that there is only a need to create a custom property for a view and it is not desired to create the property on the data entity, but only the model entity.

**Requirement**: On the list of Employees, it should be displayed how many Employees an Employee has under them.

**Task**: Create a property on the EmployeesList class that counts ReportTo

**Implementation**: 

1. Create property 'CountReportTo' on EmployeesList
2. Make mapping
3. Add the property to the list control itself.

## Create property

1. Select "User Interface".
2. Select "Employees".
3. Select the "List" tab.
4. Under "Code Tasks" select "Entity - Model" and click on "Add Code".
5. Create a property as below

```cs
    public partial class EmployeesList
    {
        public int CountReportTo { get; set; }

    }
```

## Make mapping

In "Code Tasks" select "Mapper" and implement the following (FullName mapping is from a previous example):

```cs
    public partial class EmployeesListMapperProfile
    {
        partial void AfterConfiguration(IMappingExpression<Employees, EmployeesList> mapping)
        {
            mapping.ForMember(e => e.FullName, opt => opt.MapFrom(e => $"{e.FirstName} {e.LastName}"));
            mapping.ForMember(e => e.CountReportTo, opt => opt.MapFrom(e => e.Employees2.Count));
        }
    }
```

## Add the property to the list

In "Code Tasks" select "List-Control" and implement the following:

```cs
    public partial class EmployeesList
    {
        partial void AfterSetLayout()
        {
            this.AddColumn<Northwind.Data.Entity.EmployeesList>(e => e.CountReportTo, e => e.CountReportTo);
        }
    }
```

The list now looks like this:

![Alt text](media/Mapper-Template.png)