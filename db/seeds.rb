# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Teacher.create(name: 'Gabriel', email: 'emaildogabriel@dominio.com', nascimento: '2001-01-01')
Teacher.create(name: 'Nicolas', email: 'emaildonicolas@dominio.com', nascimento: '2002-02-02')

Language.create(name: 'ruby', teacher_id: 1)
Language.create(name: 'python', teacher_id: 2)

Student.create(name: 'Artur', matricula: '164855647', email: 'emaildoartur@dominio.com', nascimento: '2002-03-03', teacher_id: 1)
Student.create(name: 'Bernardo', matricula: '165325697', email: 'emaildobernardo@dominio.com', nascimento: '2002-04-04', teacher_id: 1)
Student.create(name: 'Caio', matricula: '167846431', email: 'emaildocaio@dominio.com', nascimento: '2003-05-05', teacher_id: 1)
Student.create(name: 'Daniel', matricula: '163145678', email: 'emaildodaniel@dominio.com', nascimento: '2003-06-06', teacher_id: 2)
Student.create(name: 'Eduardo', matricula: '165764237', email: 'emaildoeduardo@dominio.com', nascimento: '2003-07-07', teacher_id: 2)