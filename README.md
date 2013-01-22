## MTManagedDocument

UIManagedDocument subclass that allows the user to specify which Managed Object Model to use at init.  This class is helpful if your application has multiple managed object models and you don't want these models merged when you create a UIManagedDocument.  


## Adding to your project

There are a few ways to add `MTManagedDocument` to your project. 

**Option 1:** Build and add the static library to your project:

1. Open the Xcode project file
2. Select the `MTManagedDocument` scheme
3. In the menu bar choose Product > Build
5. Copy the generated `MTManagedDocument` directory (found in the builds folder in the project directory) into your project.
6. Make sure that `libMTManagedDocument.a` has been added to your targets Build Phases


**Option 2:** 
Copy all the files in the `MTManagedDocument` directory into your project and be sure 'Copy items to destination group's folder' is checked

**Option 3:**
You can also install the code via CocoaPods using the podspec file include with this project

## Use

1. Import the header using `#import "MTManagedDocument.h"`
2. Create an instance of `MTManagedDocument` using the `initWithFileURL:andManagedObjectName:` method
3. Use the use the instance just as you would a UIManagedDocument 

####Initialization and presentation
```` objective-c
MTManagedDocument = [[MTManagedDocument alloc] initWithFileURL:fileURL andManagedObjectName:@"<name of your managed object mode here>"];
