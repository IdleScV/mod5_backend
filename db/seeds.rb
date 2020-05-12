# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Et.destroy_all
Timeline.destroy_all
Person.destroy_all
Event.destroy_all

User.destroy_all

City.destroy_all
Country.destroy_all


# wesley = User.create(username: "Wesley" )
# john  = User.create(username: "John" )



# croatia = Country.create(name: "Croatia")
# usa = Country.create(name: "United States")

# smijan = City.create(country: croatia, name: "Smijan")
# rahway = City.create(country: usa, name: "Rahway", state: "New Jersey")
# newark = City.create(country: usa, name: "Newark", state: "New Jersey")
# swampland = City.create(country: usa, name: "Swamp Land", state: "Swamp")

# rogan = Person.create(name: "Joe Rogan", birthday: "1967-8-11", deathday: nil, city: smijan )
# tesla = Person.create(name: "Nikola Tesla", birthday: "7/10/1856", deathday: "1/7/1943", city: newark )
# bean = Person.create(name: "Ben Lim", birthday: "20/4/1996", deathday: nil, city: swampland)

# nt_timeline = Timeline.create(title: "Life of Nikola Tesla", user: wesley, person: tesla, picture: "https://i.imgur.com/S3b0qFS.jpeg/", status: "done")
# jr_timeline = Timeline.create(title: "Life of Rogan", user: john, person: rogan, picture: "https://i.imgur.com/XqClye6.jpg", status: "done")

# bl_timeline = Timeline.create(title: "Life of a Bean", user: wesley, person:bean, picture: "https://i.imgur.com/LXvEhMe.jpg"  )

#     bl_1 = Event.create(
#         user: wesley, 
#         city: swampland,
#         instance_type: "Personal", 
#         instance_id: bean.id , 
#         snippet: "Birth", 
#         details: "Fat Bean Born", 
#         date:  "20/4/1996",    
#         scale: "Major"
#     )


#     nt_1 = Event.create(
#         user: wesley, 
#         city: smijan,
#         instance_type: "Personal", 
#         instance_id: tesla.id , 
#         snippet: "Birth", 
#         details: "Tesla was one of five children, including siblings Dane, Angelina, Milka and Marica. Tesla's interest in electrical invention was spurred by his mother, Djuka Mandic, who invented small household appliances in her spare time while her son was growing up.", 
#         date:  "10/7/1856",    
#         scale: "Major"
#         )
#     nt_2 = Event.create(
#         user: wesley, 
#         city: rahway,
#         instance_type: "Personal", 
#         instance_id: tesla.id , 
#         snippet: "First Solo Venture", 
#         details: "Tesla received funding for the Tesla Electric Light Company and was tasked by his investors to develop improved arc lighting. After successfully doing so, however, Tesla was forced out of the venture and for a time had to work as a manual laborer in order to survive.

#         His luck would change two years later when he received funding for his new Tesla Electric Company.", 
#         date:  "1/1/1885", 
#         scale: "Major",
#         link: "https://en.wikipedia.org/wiki/Tesla_Electric_Light_and_Manufacturing",
#         imageUrl: "https://d3v93rzqvnwm3k.cloudfront.net/photos/images/4740075d1828ed66a94d857dec5e8981_three_column.gif",
#         imageText: "Patent" )

#     wt_1 = Event.create(
#             user: wesley, 
#             instance_type: "World", 
#             instance_id: tesla.id , 
#             snippet: "Start of WW1", 
#             details: "World War I began in 1914 after the assassination of Archduke Franz Ferdinand and lasted until 1918. During the conflict, Germany, Austria-Hungary, Bulgaria and the Ottoman Empire (the Central Powers) fought against Great Britain, France, Russia, Italy, Romania, Japan and the United States (the Allied Powers). Thanks to new military technologies and the horrors of trench warfare, World War I saw unprecedented levels of carnage and destruction. By the time the war was over and the Allied Powers claimed victory, more than 16 million people—soldiers and civilians alike—were dead.", 
#             date:  "25/7/1914",    
#             scale: "Major",
#             link: "https://www.history.com/topics/world-war-i/world-war-i-history"
            
#         )
        
    





       


# birth =  Et.create(timeline: nt_timeline, event: nt_2)
# fund =  Et.create(timeline: nt_timeline, event: nt_1)
# war =  Et.create(timeline: nt_timeline, event: wt_1)

# birth = Et.create(timeline: bl_timeline, event: bl_1)

