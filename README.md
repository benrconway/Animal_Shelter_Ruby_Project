# Conservation_Website_Ruby_Project

After 4 weeks of study at CodeClan, I was pesented with the following brief to consolidate of my current learning of Ruby fundamentals, TDD, Object Oriented Programming, Web Programming and Database interactions.
___

### Animal Shelter

The Scottish Animal Shelter accepts orphaned or stray animals and takes care of them until 
they can be adopted by a new owner. The shelter has a list of potential new owners for the animals. 
Animals may take a while to be trained up and made healthy before being available for adoption.

They are looking for a management system to keep track of their animals and owners. 

#### MVP: 

 - A list of all their animals and their admission date
 - Mark an animal as being adoptable/not adoptable
 - Assign an animal to a new owner
 - List all the owners and their adopted animals

#### Possible Extensions:

 - CRUD actions for animals/owners
 - Have separate pages for animals ready for adoption and ones still in training/vet care
 - Search for animals by breed/type
 - Any other ideas you might come up with
 
 ___
 
After spending a day in planning out classes, database tables and the basic structure of my website, I approached the
instructor team to see if I could swap the basic theme from an Animal Shelter to a Conservation Society.
 
This Conservation society only having a minor modification to the brief. Animals and Members would have a Many-to-Many
relationship in the database, the join table would have a class representing its existence and the final product would be
slightly differentiated from the many other Animal Shelters produced by my classmates.

During the implementation, I learnt a great deal about debugging issues raised in all three sectors of Model, View and Controller.
  * Table insertions and debugging any resulting error messages
  * Understanding the scope of methods I was writing
  * Debugging issues raised by the interaction of the Controller and Views
  * Learning how to manipulate CSS and bring in UX considerations.
  
I achieved the MVP and two of the four extensions within the project timeframe. I then presented my work and learning to colleagues and instructors.  

Lessons taken:
* How to follow a stack trace for finding and correcting errors.
* How to manage CSS, and controller interactions with the front-end, models and database.
* Understanding why it is important to readability of code for the logic of an application to sit in appropriate places. "Fat models, slim controllers" and 2D views

Challenges to work on:
* Take time to learn how CSS works properly.
* Expand my understanding of Ruby functionality beyond this small brief.
* Manage personal time to gain greater efficiency and output.


All in all, I learnt at least as much about myself from this project as I did about Ruby, Sinatra, HTML/CSS and SQL. I am looking forward to coming back to this and refactoring it soon.
