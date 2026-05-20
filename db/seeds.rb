Item.destroy_all
List.destroy_all

list1 = List.create(name: "Conquérir le monde")
list2 = List.create(name: "Apprendre à coder")
list3 = List.create(name: "Courses de la semaine")

list1.items.create(content: "Réfléchir")
list1.items.create(content: "Faire TS4A")
list1.items.create(content: "Coder")

list2.items.create(content: "Apprendre Ruby")
list2.items.create(content: "Apprendre Rails")
list2.items.create(content: "Apprendre jQuery")

list3.items.create(content: "Riz")
list3.items.create(content: "Poisson")
list3.items.create(content: "Légumes")

# Emails
Email.destroy_all

10.times do
  Email.create(
    object: Faker::Lorem.sentence(word_count: 5),
    body: Faker::Lorem.paragraph(sentence_count: 5)
  )
end
