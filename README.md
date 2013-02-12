tomdoc.rubbles
==============

Aptana Rubbles project intended to use Tomdoc in Ruby projects inside Aptana Studio

# Instructions
============

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
3. Name it rublename.ruble, and browse to put the location into the "Aptana Rubles" folder.
- NOTE: You need to create a new rublename.ruble folder in the above location. Otherwise, it will create the project in the root of the "Aptana Rubles" folder.
- As an example, the result on OS X might look like:
-- Project name: my.ruble
-- Location: /Users/username/Documents/Aptana Rubles/my.ruble
4. Finish the wizard
5. Add a bundle.rb file with the following content: 
` 
require 'ruble'

bundle do |bundle|
   bundle.display_name = 'My Ruble'
end
`
6. Save and close bundle.rb
	
> You've not added any content yet, so you won't see your Ruble show up in the UI. You'll need to add templates or commands to see a visible change. See below for checking to ensure your bundle loaded.

