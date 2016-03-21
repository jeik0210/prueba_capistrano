# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
Editorial.create(name: 'editorial crecer ',pais: 'Peru', direccion: 'CALLE AGUSTIN LARA NO. 69-B')
Editorial.create(name: 'editorial bruño ',pais: 'Peru', direccion: 'AV. 20 DE NOVIEMBRE NO 1053')
Editorial.create(name: 'editorial norma ',pais: 'Peru', direccion: 'AV. INDEPENDENCIA NO. 985-A')
Editorial.create(name: 'editorial comercio ',pais: 'Peru', direccion: '	CARR. A OJITLAN NO. 951-A')
Editorial.create(name: 'editorial la voz',pais: 'Argentina', direccion: 'CALLE SEBASTIAN ORTIZ NO.849')
Editorial.create(name: 'editorial el peruano',pais: 'Argentina', direccion: 'ALDAMA ESQ. 20 DE NOVIEMBRE')
<%= select_tag :jeison, options_from_collection_for_select(Editorial.all,:id,:name), class: 'form-control'%>
=end
def too_bool number
	number == 1
end
50.times do
		p = User.new(name: Faker::Name.first_name, paternal: Faker::Name.last_name, maternal: Faker::Name.last_name, date_nac: Faker::Date.forward(23) ,sexo: too_bool(rand(2)),editorial_id: Faker::Number.between(1, 6) )
		p.save
end