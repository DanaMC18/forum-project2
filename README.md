# Fantastic Peeps (And Where to Find Them)

##User Stories
1. A user should be able to **create new topics**.
2. A user should be able to **read existing topics**.
3. A user should be able to **comment** on existing topics.
4. A user should be able to **edit** comments or topics they have started.
5. A user should be able to see **when a topic was created** (date/time).
6. A user should be able to **see when a comment was added** (date/time).
7. A user should be able to **see who created** a topic.
8. A user should be able to see **who commented.**
9. A user should be able to **upvote** a topic.
10. A user should be able to see **topics listed in order of popularity**.
11. A user should be able to see **how many comments** a topic has.
12. A user should have an **avatar/profile picture.**
13. A user should have a **username.**
14. A user should be able to **'like'** a comment.
15. A user should be able to see nested topics/subcomments. *
16. A user should be able to create a signature that appears at the bottom of every post.*
17. A user should be able to direct message another user.*
18. A user should be able to use markdown to embed images, format text, etc.*

##Wire Frames
1. The Home Page: Even if a visitor is not logged in or signed up, they can view the topics. The banner and navigation bar will appear on every page. However they will not be able to create topics or comments, vote up topics, like comments, or view user's profiles. 
![alt-text](https://github.com/DanaMC18/forum-project2/blob/master/public/imgs/wire-frames/home.png)
2. The Home Page: This view is when a user is logged in. They can create a new topic and vote up topics. The topics are ordered by number of votes. The topics display a title, a creator, a date, and number of comments. A logged in user can also see a link to a list of other user's ("fantastic peeps"). 
![alt-text](https://github.com/DanaMC18/forum-project2/blob/master/public/imgs/wire-frames/home-logged-in.png)
3. The Topic Page: When a user on the home page clicks a topic's title, they will enter the topic and be able to see any comments as well as add a comment. They can also like a comment(s). Markdown will be supported when topics/comments are viewed.
![alt-text](https://github.com/DanaMC18/forum-project2/blob/master/public/imgs/wire-frames/topic.png)
4. The Edit Topic/Create Topic Page: If a user created a particular topic they can edit that topic's title and/or content at any time. Here, they also have the option of deleting the topic altogether (including its comments). The edit page will show the topic in its current form and the editing tools beneath it. The page to create a new topic will be a form similar to the editing form here--minus a current topic. 
![alt-text](https://github.com/DanaMC18/forum-project2/blob/master/public/imgs/wire-frames/topic-edit.png)
5. The Edit Comment Page: Similar to topics, if a user created a particular comment they can edit or delete it. The comment in its current form will appear above the editing tools. 
![alt-text](https://github.com/DanaMC18/forum-project2/blob/master/public/imgs/wire-frames/comment-edit.png)
6. The User's List: A logged-in user can see a list of other user's via the Fantastic Peeps link. Here they are listed by username, which are also links to each user's respective profile page. 
![alt-text](https://github.com/DanaMC18/forum-project2/blob/master/public/imgs/wire-frames/users.png)
7. The Profile Page: When a logged-in user clicks on a username anywhere on the site (minus in topics/comments), they will be taken to that user's profile page. The profile page consists of a user's actual name, username, and a profile picture. 
![alt-text](https://github.com/DanaMC18/forum-project2/blob/master/public/imgs/wire-frames/user-profile.png)
8. The Edit Profile Page: If a user wishes to edit their profile, they can do so via the edit button on their profile page. They will be taken to an edit page. Similar to editing topics and comments, the user's profile in its current form will appear above the editing tools. They can also choose to delete their profile via this page. 
![alt-text](https://github.com/DanaMC18/forum-project2/blob/master/public/imgs/wire-frames/user-edit.png)

##ERD/Data Models
![alt text](https://github.com/DanaMC18/forum-project2/blob/master/public/imgs/erd.png)

##Technologies Used
1. HTML
2. CSS
3. JavaScript
4. JQuery
5. Ruby
6. Sinatra
7. SQL
8. Active Record

##Link to App!
[*Accio* Peeps!](https://fantastic-peeps.herokuapp.com/)
