**Designer's Architectural Elements**

Below is an overview of the key elements in the designer, and how they function within the application structure:

| **Element**  | **Functionality** |
|--------------|--------------------|
| **Database** | Central meta-data storage of the database, the foundation for other elements. |
| **Entity Framework** | Generates code from the database's meta-data. |
| **Validation** | Creates code for validation, optimized with the FluentValidation framework, from the database's meta-data. |
| **Resx** | Enables multilingual support in the application. |
| **Resx Syncing EntityCaptions** | Custom text descriptions for entities in the user interface. |
| **User Interface** | Generates user interface code for each entity based on meta-data. |
| **AppSettings** | Global application parameters stored in the SQL database. |
| **UserSettings** | User-specific parameters stored in the SQL database. |
| **Revision** | Generates code for revision tracking and SQL scripts for detailed table revision and presentation in the user interface. |
| **Security** | Provides functionality to define roles and operations for security management. |

These are described in more detail under "Architectural Elements".