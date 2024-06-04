#ruby vesion 
FROM  ruby:2.7.0
 
#update dist-list
RUN apt update -y

#install bundler i used 
RUN gem install bundler:2.3.7 

#installing rails
RUN gem install rails

#install action_text feature of rails6
RUN rails active_storage:install

#install sqlite3
RUN apt install sqlite3 -y

#setting default working directory
WORKDIR app

#adding project folder/files
ADD ../clone/twitter-clone .

#install dependency used in the project
RUN bundle install

#exposing the port
EXPOSE 3000

#running the server
CMD ["rails", "server", "-b", "0.0.0.0"]
