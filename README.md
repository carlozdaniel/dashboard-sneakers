# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

######  Ruby version
  ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-linux]
######  Configuration
  you must have initiated the services of redis as well as rabbitMQ  
######  Database creation
  rake rabbitmq:setup       

######  Dependency
    https://github.com/carlozdaniel/Events-on-Rails-with-RabbitMQ
instructions 
1   in order to use it you have to run the redis and rabbitMQ services 
    `$ sudo systemctl restart redis`
2 you need to have the Events-on-Rails-with-RabbitMQ project running at http://localhost:3000/posts/#/
`$ rails s -p 3000`
3 create a user and connect to the rabbitmq server http://localhost:15672/#/
`$ sudo docker start some-rabbit`
