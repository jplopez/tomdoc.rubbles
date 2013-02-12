tomdoc.rubbles
==============

Aptana Rubbles project intended to use Tomdoc in Ruby projects inside Aptana Studio

# Instructions
==============

These steps were taken from this tutorial https://wiki.appcelerator.org/display/tis/Creating+a+new+Ruble

## 1 Creating a new Ruble Using the Wizard (New!)

1. File > New > Ruby Project
2. Type a name of your Ruble (i.e. my.ruble)
3. Ensure the "I'll generate my own code..." radio is selected. Click Next
4. Click the checkbox to use a template, and select "Ruble Template". Click Finish
5. The ruble is created in your workspace.


## 2 A bare-bones Ruble from Scratch
The Ruble Specification lists the complete set of items that can be created, but at the bare minimum you need a folder and a single bundle.rb file to create a ruble. The only difference is where you place the files.

We list the steps to create a very simple ruble. Below these steps, we illustrate where you can place this Ruble for different effects.

> Make sure the rublename you choose below is unique to all your installed rubles, or otherwise you will end up overriding an existing Ruble's functionality. Also note this is a tiny bit more complicated than it ought to be--we'll make this easier in future versions.

1. You want to figure out first where your Application Rubles folder lives.
- Mac/Linux: $home/Documents/Aptana Rubles.
- Everywhere else: ${user.home}/Aptana Rubles. On Windows, that would translate to somewhere like c:\Users\Username\Aptana Rubles
- If you still can't find the location, look for your user.home java property. Open up the "About Studio" menu, then Installation Details > Configuration and search for the user.home property.

2. Create a new Ruby project. (File > New Ruby Project)
3. Name it _rublename_.ruble, and browse to put the location into the "Aptana Rubles" folder.
- NOTE: You need to create a new _rublename_.ruble folder in the above location. Otherwise, it will create the project in the root of the "Aptana Rubles" folder.
- As an example, the result on OS X might look like:
-- Project name: my.ruble
-- Location: /Users/username/Documents/Aptana Rubles/my.ruble
4. Finish the wizard
5. Add a bundle.rb file with the following content: 

`require 'ruble'`
`bundle do |bundle|`
`   bundle.display_name = 'My Ruble'`
`end`

6. Save and close bundle.rb
	
> You've not added any content yet, so you won't see your Ruble show up in the UI. You'll need to add templates or commands to see a visible change. See below for checking to ensure your bundle loaded.

### Ruble file locations
In general you will place your Ruble files in one of two locations.

A. Any top-level "bundles" directory in an active projects within the current workspace.
B. The $USER_DOCUMENT_DIRECTORY/Aptana Rubles/, where $USER_DOCUMENT_DIRECTORY is platform dependent.

Project-level bundles (A) will override user-level bundles (B) if there is a conflict. (B) is the preferred approach as it makes your ruble easier to share later.

## 3 Checking to ensure your Ruble loaded
Studio 3 includes a bundles view that shows all currently loaded Rubles. You can use it to ensure your Ruble actually loaded as expected.

1. Go to Window > Show View > Other...
2. Expand the Studio category
3. Select the Bundles item: A view appears showing all currently loaded bundles
4. You should see the bundle with the name you gave above in the list
5. For detailed information on selected items in the Bundles View, go to Window > Show View > Other...
6. Expand the General category
7. Select the Properties item : A view appears showing detailed information on your Bundles View selection
8. If your bundle has an error, you should see output in the Console view.
 
# Usage
=======

Rubbles are used via _trigger_. Type "_tom_" and then hit Ctrl + Space.
You'll see 3 snippets
1. Tomdoc Class : For Class documentation. Use this above class declaration
2. Tomdoc Constant: constant or important variables
3. Tomdoc Method: for method documentations. Use this above method declaration

