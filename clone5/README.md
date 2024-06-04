# twitter using Ruby on Rails

Twitter using Ruby on Rails is original idea from Twitter website. try to develope things for a learning purposed. 


 ## How to run app
 - Either fork or download the app and open in cli 
 - Install all the dependency using `bundle install` 
 - Start the rails server using `rails server` and it will served at `localhost:3000/`
 - Go to `localhost:3000/` at try do things.

## How to Tweets
- First we need to Sign Up with your credentail.
-  After that We need to set up public profile for your account .
-  Publish Tweet button in menu bar is  to to public new tweets.
-  After publishing tweet our tweet will available in public tweet section as well it vissible in connections.

## Features

#### Complate Auth
 - For `sign Up` it is verify the your credential using tocken link.
 - As same for forgot password.
 - Update credential.
  
#### Tweet
- We can tweet as many times according your credential.
- We can't update tweets .
- we can delete tweet in acoount section.
- After tweet is publish timestamp is available there for each tweets.
- like also display ,who is tweets.
- uder the name of publisher if we click then there profile is available.

#### Profile
- We can set our bio,name,profile photo in profile section it is mandatory .
- We can Update it as many times.

#### Like and dislike
- We can like in to perticular tweet.
- Once you like we can revert it to dislike.
- We can like as mmeny tweets.

#### Make a connections
- We can make as many user connection's to see there tweet on personal page
- We can disconnect to perticular user as well.

#### Account
- Under account section we can manage user profile.
- We can manages tweets.
- We can manages user connection.

#### Personal Page
- We can see there only connected user's tweets.
- It is keep updating ,it display updated latest tweets first. 

  
## Docker image
 pulling the docker image 
 
 ```
   docker pull radhesham/twitter:1.0 
   ```
 
 run the docker pull image
   
   ```
   docker run radhesham/twitter:1.0
   ```
   
    
