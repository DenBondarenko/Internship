# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Category
Category.create(title: 'Album')
Category.create(title: 'Book')
Category.create(title: 'Photobook')
Category.create(title: 'Merch')

# Product
Product.create(name: "Proof (Collector's Edition)",
               description: "Proof — перший альбом-антологія, випущений південнокорейським гуртом BTS 10 червня 2022 року через Big Hit Music. 3-дисковий проект включає в себе кілька синглів гурту за останні роки; добірка дискографічних «фаворитів» на вибір учасників гурту; а також різноманітні демо та треки, які раніше не видавалися.",
               price: 275.91, image: 'https://cdn-contents.weverseshop.io/public/shop/8d1f76c5ff0e19355fbfa4ca1ec0fa6f.png?q=85&w=932&h=1118')
Product.create(name: "Jack In The Box [LP] (Limited Edition)",
               description: "Jack in the Box — дебютний студійний альбом південнокорейського репера J-Hope, випущений 15 липня 2022 року через Big Hit Music.",
               price: 48.30)
Product.create(name: 'The Tale of the Magic Island : THE STAR SEEKERS (K)',
               description: 'Pop-up книга південнокорейського гурту Tomorrow X Together (TXT)',
               price: 48.00)
Product.create(name: '‘The Thirteen Tapes (TTT)’ vol. 3/13 VERNON',
               description: "Фотоальбом південнокорейського співака VERNON'а",
               price: 15.32)
Product.create(name: 'Official Light Stick Special Edition',
               description: 'Розмір (мм) - 95,2 * 95,2 * 226,9
               Матеріал - ABS/PC пластик
               Виробник - FANLIGHT
               Країна виробник - КОРЕЯ',
               price: 36.23)

# Product_categories
ProductCategory.create(product_id: 1, category_id: 1)
ProductCategory.create(product_id: 2, category_id: 1)
ProductCategory.create(product_id: 3, category_id: 2)
ProductCategory.create(product_id: 4, category_id: 3)
ProductCategory.create(product_id: 5, category_id: 4)

#User
User.create!(email: 'user@example.com', password: 'password', password_confirmation: 'password')
if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password',
                    password_confirmation: 'password')
end
