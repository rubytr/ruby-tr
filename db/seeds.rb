# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.delete_all

companies = Company.create(
    [
      {id: 1, name: 'Enkuba', city: 'Istanbul', web: 'http://www.enkuba.com'},
      {id: 2, name: 'Yeni Hayat', city: 'Istanbul', web: 'http://www.yh.com.tr'},
      {id: 3, name: 'CloudArena', city: 'Istanbul', web: 'http://www.cloudarena.com'},
      {id: 4, name: 'Promoqube', city: 'Istanbul', web: 'http://www.promoqube.com'}
    ]
  )
