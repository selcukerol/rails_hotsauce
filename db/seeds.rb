# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def set_image_path image
	File.new( File.join Rails.root, %w(public images),image)
end	



Item.create( [{name:'Turkish Pepper', cost: 40, image: set_image_path('turkishpepper.jpg')}, {name:'Sweet Pepper', cost: 10, image: set_image_path('sweetpepper.jpg')}, {name:'Sumac', cost: 100, image: set_image_path('sumac.jpeg')}, {name:'Serrano', cost: 30, image: set_image_path('serrano.jpg')}, {name:'New Mexico Chilli', cost: 20, image: set_image_path('mexican.jpg')}, {name:'Cayenne', cost: 40, image: set_image_path('cayenne.jpg')} ]) 
