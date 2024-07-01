# File Upload

In the UI, it is possible to create a file upload control and display a file/image for byte/image fields in the database.

The examples below are made on Northwind's Category, which has a field "Picture" varbinary(max).

Properties of type "byte[]" get by default in the "User Interface" set the show control to "Image - Show" and the update control to "Image - Editor".

These can be configured to support various scenarios.

By default, all file types can be uploaded.

## How to

[File Upload - One field (bytes)](1-field.md)

[File upload - Two fields (bytes and filename) - edit files](2-fields.md)

[File upload - 3 fields (bytes, filename, and thumbnail)](3-fields.md)

[File upload - Other configurations](other-configurations.md)