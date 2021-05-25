# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'


  url = URI.escape'http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses'
  hos_serialized = URI.open(url).read
  # JSON.dump(hos_serialized)
data = JSON.parse(hos_serialized)

diseases = data["_embedded"]['illnesses']

diseases = [
            {
                "illness": {
                    "name": "Mortal Cold",
                    "id": 1
                },
                "_links": {
                    "illnesses": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses"
                    },
                    "self": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses/1"
                    }
                }
            },
            {
                "illness": {
                    "name": "Happy Euphoria",
                    "id": 2
                },
                "_links": {
                    "illnesses": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses"
                    },
                    "self": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses/2"
                    }
                }
            },
            {
                "illness": {
                    "name": "Withering Parasite",
                    "id": 3
                },
                "_links": {
                    "illnesses": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses"
                    },
                    "self": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses/3"
                    }
                }
            },
            {
                "illness": {
                    "name": "Death's Delusions",
                    "id": 4
                },
                "_links": {
                    "illnesses": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses"
                    },
                    "self": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses/4"
                    }
                }
            },
            {
                "illness": {
                    "name": "Intense Intolerance",
                    "id": 5
                },
                "_links": {
                    "illnesses": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses"
                    },
                    "self": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses/5"
                    }
                }
            },
            {
                "illness": {
                    "name": "Whispering Hepatitis",
                    "id": 6
                },
                "_links": {
                    "illnesses": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses"
                    },
                    "self": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses/6"
                    }
                }
            },
            {
                "illness": {
                    "name": "Spirit Parasite",
                    "id": 7
                },
                "_links": {
                    "illnesses": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses"
                    },
                    "self": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses/7"
                    }
                }
            },
            {
                "illness": {
                    "name": "Crippling Paranoia",
                    "id": 8
                },
                "_links": {
                    "illnesses": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses"
                    },
                    "self": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses/8"
                    }
                }
            },
            {
                "illness": {
                    "name": "Sheep Sneeze",
                    "id": 9
                },
                "_links": {
                    "illnesses": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses"
                    },
                    "self": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses/9"
                    }
                }
            },
            {
                "illness": {
                    "name": "Impossible Ebola",
                    "id": 10
                },
                "_links": {
                    "illnesses": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses"
                    },
                    "self": {
                        "href": "http://dmmw-api.australiaeast.cloudapp.azure.com:8080/illnesses/10"
                    }
                }
            }
        ]


diseases.each do  |disease|
  Disease.create(name: "#{disease[:illness][:name]}", disease_id: disease[:illness][:id])

end



















url = URI.escape'http://dmmw-api.australiaeast.cloudapp.azure.com:8080/hospitals'
hos_serialized = URI.open(url).read
data = JSON.parse(hos_serialized)
hospitals =data["_embedded"]['illnesses']

 # hospitals = [
 #            {
 #                "id": 1,
 #                "name": "St Vincent's Hospital",
 #                "waitingList": [
 #                    {
 #                        "patientCount": 10,
 #                        "levelOfPain": 0,
 #                        "averageProcessTime": 20
 #                    },
 #                    {
 #                        "patientCount": 5,
 #                        "levelOfPain": 1,
 #                        "averageProcessTime": 33
 #                    },
 #                    {
 #                        "patientCount": 1,
 #                        "levelOfPain": 2,
 #                        "averageProcessTime": 15
 #                    },
 #                    {
 #                        "patientCount": 10,
 #                        "levelOfPain": 3,
 #                        "averageProcessTime": 39
 #                    },
 #                    {
 #                        "patientCount": 2,
 #                        "levelOfPain": 4,
 #                        "averageProcessTime": 33
 #                    }
 #                ],
 #                "location": {
 #                    "lat": -33.88040900,
 #                    "lng": 151.22095800
 #                }
 #            },
 #            {
 #                "id": 2,
 #                "name": "Royal Prince Alfred Hospital",
 #                "waitingList": [
 #                    {
 #                        "patientCount": 0,
 #                        "levelOfPain": 0,
 #                        "averageProcessTime": 60
 #                    },
 #                    {
 #                        "patientCount": 1,
 #                        "levelOfPain": 1,
 #                        "averageProcessTime": 15
 #                    },
 #                    {
 #                        "patientCount": 2,
 #                        "levelOfPain": 2,
 #                        "averageProcessTime": 16
 #                    },
 #                    {
 #                        "patientCount": 0,
 #                        "levelOfPain": 3,
 #                        "averageProcessTime": 87
 #                    },
 #                    {
 #                        "patientCount": 1,
 #                        "levelOfPain": 4,
 #                        "averageProcessTime": 71
 #                    }
 #                ],
 #                "location": {
 #                    "lat": -33.88940600,
 #                    "lng": 151.18348800
 #                }
 #            },]


 hospitals = [
            {
                "id": 1,
                "name": "St Vincent's Hospital",
                "waitingList": [
                    {
                        "patientCount": 10,
                        "levelOfPain": 0,
                        "averageProcessTime": 20
                    },
                    {
                        "patientCount": 5,
                        "levelOfPain": 1,
                        "averageProcessTime": 33
                    },
                    {
                        "patientCount": 1,
                        "levelOfPain": 2,
                        "averageProcessTime": 15
                    },
                    {
                        "patientCount": 10,
                        "levelOfPain": 3,
                        "averageProcessTime": 39
                    },
                    {
                        "patientCount": 2,
                        "levelOfPain": 4,
                        "averageProcessTime": 33
                    }
                ],
                "location": {
                    "lat": -33.88040900,
                    "lng": 151.22095800
                }
            },
            {
                "id": 2,
                "name": "Royal Prince Alfred Hospital",
                "waitingList": [
                    {
                        "patientCount": 0,
                        "levelOfPain": 0,
                        "averageProcessTime": 60
                    },
                    {
                        "patientCount": 1,
                        "levelOfPain": 1,
                        "averageProcessTime": 15
                    },
                    {
                        "patientCount": 2,
                        "levelOfPain": 2,
                        "averageProcessTime": 16
                    },
                    {
                        "patientCount": 0,
                        "levelOfPain": 3,
                        "averageProcessTime": 87
                    },
                    {
                        "patientCount": 1,
                        "levelOfPain": 4,
                        "averageProcessTime": 71
                    }
                ],
                "location": {
                    "lat": -33.88940600,
                    "lng": 151.18348800
                }
            },
            {
                "id": 3,
                "name": "Royal North Shore Hospital",
                "waitingList": [
                    {
                        "patientCount": 4,
                        "levelOfPain": 0,
                        "averageProcessTime": 75
                    },
                    {
                        "patientCount": 4,
                        "levelOfPain": 1,
                        "averageProcessTime": 25
                    },
                    {
                        "patientCount": 4,
                        "levelOfPain": 2,
                        "averageProcessTime": 5
                    },
                    {
                        "patientCount": 4,
                        "levelOfPain": 3,
                        "averageProcessTime": 60
                    },
                    {
                        "patientCount": 14,
                        "levelOfPain": 4,
                        "averageProcessTime": 87
                    }
                ],
                "location": {
                    "lat": -33.82099200,
                    "lng": 151.19141500
                }
            },
            {
                "id": 4,
                "name": "Sydney Children's Hospital",
                "waitingList": [
                    {
                        "patientCount": 2,
                        "levelOfPain": 0,
                        "averageProcessTime": 30
                    },
                    {
                        "patientCount": 11,
                        "levelOfPain": 1,
                        "averageProcessTime": 29
                    },
                    {
                        "patientCount": 10,
                        "levelOfPain": 2,
                        "averageProcessTime": 44
                    },
                    {
                        "patientCount": 2,
                        "levelOfPain": 3,
                        "averageProcessTime": 16
                    },
                    {
                        "patientCount": 11,
                        "levelOfPain": 4,
                        "averageProcessTime": 75
                    }
                ],
                "location": {
                    "lat": -33.91728600,
                    "lng": 151.23767000
                }
            },
            {
                "id": 5,
                "name": "Prince of Wales Hospital",
                "waitingList": [
                    {
                        "patientCount": 0,
                        "levelOfPain": 0,
                        "averageProcessTime": 23
                    },
                    {
                        "patientCount": 2,
                        "levelOfPain": 1,
                        "averageProcessTime": 20
                    },
                    {
                        "patientCount": 2,
                        "levelOfPain": 2,
                        "averageProcessTime": 28
                    },
                    {
                        "patientCount": 3,
                        "levelOfPain": 3,
                        "averageProcessTime": 25
                    },
                    {
                        "patientCount": 21,
                        "levelOfPain": 4,
                        "averageProcessTime": 65
                    }
                ],
                "location": {
                    "lat": -33.91851000,
                    "lng": 151.23897000
                }
            },
            {
                "id": 6,
                "name": "Ryde Hospital",
                "waitingList": [
                    {
                        "patientCount": 1,
                        "levelOfPain": 0,
                        "averageProcessTime": 40
                    },
                    {
                        "patientCount": 1,
                        "levelOfPain": 1,
                        "averageProcessTime": 38
                    },
                    {
                        "patientCount": 1,
                        "levelOfPain": 2,
                        "averageProcessTime": 50
                    },
                    {
                        "patientCount": 4,
                        "levelOfPain": 3,
                        "averageProcessTime": 30
                    },
                    {
                        "patientCount": 4,
                        "levelOfPain": 4,
                        "averageProcessTime": 29
                    }
                ],
                "location": {
                    "lat": -33.79627100,
                    "lng": 151.08970900
                }
            },
            {
                "id": 7,
                "name": "Concord Repatriation General Hospital",
                "waitingList": [
                    {
                        "patientCount": 5,
                        "levelOfPain": 0,
                        "averageProcessTime": 42
                    },
                    {
                        "patientCount": 1,
                        "levelOfPain": 1,
                        "averageProcessTime": 16
                    },
                    {
                        "patientCount": 2,
                        "levelOfPain": 2,
                        "averageProcessTime": 80
                    },
                    {
                        "patientCount": 5,
                        "levelOfPain": 3,
                        "averageProcessTime": 44
                    },
                    {
                        "patientCount": 4,
                        "levelOfPain": 4,
                        "averageProcessTime": 23
                    }
                ],
                "location": {
                    "lat": -33.83513200,
                    "lng": 151.09665500
                }
            },
            {
                "id": 8,
                "name": "St George Hospital",
                "waitingList": [
                    {
                        "patientCount": 5,
                        "levelOfPain": 0,
                        "averageProcessTime": 11
                    },
                    {
                        "patientCount": 5,
                        "levelOfPain": 1,
                        "averageProcessTime": 42
                    },
                    {
                        "patientCount": 5,
                        "levelOfPain": 2,
                        "averageProcessTime": 37
                    },
                    {
                        "patientCount": 15,
                        "levelOfPain": 3,
                        "averageProcessTime": 39
                    },
                    {
                        "patientCount": 5,
                        "levelOfPain": 4,
                        "averageProcessTime": 68
                    }
                ],
                "location": {
                    "lat": -33.96549300,
                    "lng": 151.13403200
                }
            },
            {
                "id": 9,
                "name": "Northern Beaches Hospital",
                "waitingList": [
                    {
                        "patientCount": 10,
                        "levelOfPain": 0,
                        "averageProcessTime": 21
                    },
                    {
                        "patientCount": 10,
                        "levelOfPain": 1,
                        "averageProcessTime": 41
                    },
                    {
                        "patientCount": 21,
                        "levelOfPain": 2,
                        "averageProcessTime": 39
                    },
                    {
                        "patientCount": 10,
                        "levelOfPain": 3,
                        "averageProcessTime": 40
                    },
                    {
                        "patientCount": 10,
                        "levelOfPain": 4,
                        "averageProcessTime": 38
                    }
                ],
                "location": {
                    "lat": -33.75040000,
                    "lng": 151.23260000
                }
            },
            {
                "id": 10,
                "name": "Auburn Hospital & Community Health Services",
                "waitingList": [
                    {
                        "patientCount": 1,
                        "levelOfPain": 0,
                        "averageProcessTime": 36
                    },
                    {
                        "patientCount": 6,
                        "levelOfPain": 1,
                        "averageProcessTime": 20
                    },
                    {
                        "patientCount": 3,
                        "levelOfPain": 2,
                        "averageProcessTime": 18
                    },
                    {
                        "patientCount": 4,
                        "levelOfPain": 3,
                        "averageProcessTime": 50
                    },
                    {
                        "patientCount": 6,
                        "levelOfPain": 4,
                        "averageProcessTime": 4
                    }
                ],
                "location": {
                    "lat": -33.86040200,
                    "lng": 151.03362000
                }
            }
        ]




hospitals.each do  |hospital|
  hospital[:waitingList].each do |waitingList|
   WaitingList.create(patientsNumber: waitingList[:patientCount],
    painLevel: waitingList[:levelOfPain],WaitingTime:waitingList[:averageProcessTime])
end
end



hospitals.each do  |hospital|
  Hospital.create(name: "#{hospital[:name]}", hospital_id: hospital[:id],
    lat: hospital[:location][:lat], long: hospital[:location][:lng])

end
