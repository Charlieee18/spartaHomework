# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	varnish1 = Varnish.create(colour:'Pink', shade:'I Pink I can', sort:'Gel Shine', image:'i_pink_i_can.jpg')
	varnish2 = Varnish.create(colour:'Purple', shade:'Hail To The Queen', sort:'Satin Matte', image:'hail_to_the_queen.jpg')
	varnish3 = Varnish.create(colour:'Teal', shade:'Do Not Disturb', sort:'60 Seconds Super Shine', image:'do_not_disturb.jpeg')
	varnish4 = Varnish.create(colour:'Red', shade:'Bright Red', sort:'classic', image:'bright_red.jpg')
	varnish5 = Varnish.create(colour:'Blue', shade:'Uptown Blue', sort:'Forever Strong SuperStay', image:'uptown_blue.jpeg')

	avon = Company.create( name:'Avon', website:'https://www.avon.uk.com/', logo:'avon.png')
	rimmel = Company.create( name:'Rimmel London', website:'https://www.rimmellondon.com/en_gb/', logo:'rimmel_london.png')
	barrym = Company.create( name:'Barry M', website:'https://www.barrym.com/', logo:'barry_m.png')
	maybelline = Company.create( name:'Maybelline', website:'https://www.maybelline.co.uk/', logo:'maybelline.png')

	avon.varnishes << varnish1
	avon.varnishes << varnish2
	rimmel.varnishes << varnish3
	barrym.varnishes << varnish4
	maybelline.varnishes << varnish5

	avon.save
	rimmel.save
	barrym.save
	maybelline.save