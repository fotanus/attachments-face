attachments-face
================

A Rails plugin to make creating fully customizable attachments in the view easier.

Up to date, it provides:
* Fully customizable text inputs that works well with forms
* An helper method with "Add new attachment" link (and links to remove the current attachments)

How to use
----------

There is no official release yet. Currently, you have:

* Multiple attachments helper
In you views, use

```
multiple_attachments :files
```

To generate customizable file inputs that can be added and removed dynamically. If inside a form, when submited, an array named files will contain all the uploaded attachments. Don't forget to set the form to send multipart items.
