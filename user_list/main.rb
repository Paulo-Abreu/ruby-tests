$LOAD_PATH << '.'
require 'user.rb'
require 'contact.rb'
require 'user_services.rb'
require 'contact_services.rb'
require 'response_service.rb'
include User_services
include Contact_services
include Response_service

users =  [{id:1,name:"Jean",email:"jean@gmail.com",phone:41995281756}, {id:2,name:"Mario",email:"mario@gmail.com",phone:4198656565},{id:3,name:"Francisco",email:"franc@gmail.com",phone:4895653232}, {id:4,name:"Maria", email:"mary@gmail.com",phone:4865659898 }, {id:5,name:"Gisele",email:"gisele@gmail.com",phone:4865653232}]
contacts = [{id:1,name:"Marlon",email:"marl@gma(il.com",phone:419598656,user_id:1 }, {id:2,name:"Carla",email:"carlc@gmail.com",phone:4198896565,user_id:2 }, {id:3,name:"Miranda",email:"mir@gmail",phone:419898665,uder_id:2 }, {id:4,name:"Irlanda",email:"ir@gmail.com",phone:98986565,user_id:3 }, {id:5,name:"Carlos",email:"carlis@gmail.com",phone:8797987654654,user_id:4 }, {id:6,name:"Francielle",email:"fran",phone:898986565,user_id:5 }, {id:7,name:"Paulo",email:"paulo@gmail.com",phone:8765653232,user_id:4 }, {id:8,name:"Cris",email:"cris@gmail.com",phone:898656565,user_id:3 }, {id:9,name:"Chitao",email:"chit@gmail.com",phone:57454654654,user_id:2 }, {id:10,name:"Careca",email:"gmail.com",phone:9865653532,user_id:1 }, {id:11,name:"Beto",email:"b@gmail.com",phone:989566654,user_id:2 }, {id:12,name:"Gisele",email:"gisele@gmail.com",phone:4165653232,user_id:3 }, {id:13,name:"Brian",email:"bria@gmail.com",phone:986565353,user_id:4 }, {id:14,name:"Conceicao",email:"concei@gmail.com",phone:9865653535,user_id:5 }, {id:15,name:"Maria",email:"mary@gmail.com",user_id:4 }, {id:16,name:"Antonia",email:"ant@gmail.com",phone:486565332,user_id:5 }, {id:17,name:"Orlando",email:"orlando@gmail.com",phone:4865659898,user_id:1}]


userjs = users.map{ |users| User_services.create_user(users[:id], users[:name], users[:email], users[:phone])}
contactsjs = contacts.map{ |contacts| Contact_services.create_contact(contacts[:id], contacts[:name], contacts[:email],contacts[:phone], contacts[:user_id])}
to_json = Response_service.response_as_json(contactsjs, userjs)