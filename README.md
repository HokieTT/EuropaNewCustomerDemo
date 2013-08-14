EuropaNewCustomerDemo
=====================

A Demo of Europa's new customer form with cfwheels



1) Database is SQL Server, available in the root of the zip file as europa.sql 
(NOTE: Open this in SSMS while connected to your local SQL Server, and execute it.

2) Datasource should be set up with the name Europa, username demo,
and password demopass

3) Unzip everything to the root of whatever web server you'll be using
it on.  (You may be able to run it from a subdirectory, but I did it
from root)

4) I set up the home route so it should go to the central page when
you go to the root on the web server, but if not, you can get to it at
http://your.server/index.cfm/Members

5) Everything should function as you requested, with the only actual
page loads coming when you go to that main page or when you click a
link to go to the add member or admin pages, and every other action
occuring using AJAX in the background.

6) There is CF on Wheels validation for several of the form elements,
like mandatory fields, password validation, unique username and
password, etc.  Validation error messages are not customized so they
refer directly to the form field's name.  Other fields have no
validation as I felt it might slow down your account adding and
whatnot while you're checking it out.

7) There is a very weak and limited Captcha implemented with a
javascript validation.

8) There's no security or formatting, so look out for all the ugly!

9) The database fields are mostly varchar(50) with no indexing or
anything fancy, just to simplify things for the purposes of this demo.
 For a real app, I'd of course use some foreign keys to other tables
as well as the appropriate data types.

10) I used a Wheels plugin "Remote Form Helpers", which is super cool,
to implement the AJAX.

11) I only included a few options for the dropdowns like Sales Rep,
State, Country, and Reseller Type.  I figured it would keep the code
cleaner.

12) I had originally added a few DB fields for timestamping and IP
address, but I didn't implement them as of now.

I used ColdFusion 9.02 Dev Edition with built-in web server and CF on
Wheels 1.1.8 and SQL Server Dev Edition 2008.
