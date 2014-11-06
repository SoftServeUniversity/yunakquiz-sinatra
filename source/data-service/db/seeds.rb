#encoding: utf-8 

cat1 = Category.create(category_id: 0, title: "Спорт")
subcat1 = cat1.create(title: "Футбол")
subcat2 = cat1.create(title: "Хокей")

cat2 = Category.create(category_id: 0, title: "Історія")
subcat3 = cat2.create(title: "Історія України")
subcat4 = cat2.create(title: "Історія світу")

cat3 = Category.create(category_id: 0, title: "Програмування")
subcat5 = cat3.create(title: "Основи ООП")
subcat6 = cat3.create(title: "Основи Java")

adminRole = Role.create(name: 'admin')
userRole =  Role.create(name: 'user')
moderRole = Role.create(name: 'moder')
superadminRole = Role.create(name: 'superadmin')
# quiz1.user = moder

admin = User.create(username: "admin123", hashed_password:"1515cb08baef6dd8ec5abc9df507580b2f54d1437fb1a6b887ea2e3134302981",
salt: "03b09c792bdf1d5b11800292031fce4e56121730700bdc96761a8b347158fc3a", email: "admin@gmail.com")      

user = User.create(username: "user123", hashed_password:"79339bf3660f7748886b79d9ab4dc75bfffc51a4abba4aaca7fb44c7db336f8d",
salt: "8a002f794bf4fb85333af6ae77eccab208239f114973b0d6cedfb8859160f0f4", email: "user@gmail.com")

moder = User.create(username: "moder123", hashed_password:"79339bf3660f7748886b79d9ab4dc75bfffc51a4abba4aaca7fb44c7db336f8d",
salt: "8a002f794bf4fb85333af6ae77eccab208239f114973b0d6cedfb8859160f0f4", email: "moder@gmail.com")


Permission.create(tabs: 'admin1', admin: '1', superadmin: '4')
Permission.create(tabs: 'admin2', admin: '1', superadmin: '4')
Permission.create(tabs: 'admin3', admin: '1', superadmin: '4')

Permission.create(tabs: 'moder1', moder: '2', superadmin: '4')
Permission.create(tabs: 'moder2', moder: '2', superadmin: '4')
Permission.create(tabs: 'moder3', moder: '2', superadmin: '4')

Permission.create(tabs: 'comm1', admin: '1', moder: '2', user: '3', superadmin: '4')
Permission.create(tabs: 'comm2', admin: '1', moder: '2', user: '3', superadmin: '4')



quiz1 = subcat1.quizzes.create(status:"published", title: "Тест на знання правил футболу", description: "Детальний опис тесту")
question1_1 = quiz1.questions.create(title: "Скільки гравців в команді?", description: "Згідно правил на полі знаходиться 11 гравців однієї команди")
question1_1.answers.create(title: "11", correct: true)
question1_1.answers.create( title: "12", correct: false)
question1_1.answers.create( title: "5", correct: false)
question1_2 = quiz1.questions.create(title: "Скільки триває один тайм?", description: "Один тайм матчу триває 45 хв. не враховуючи додаткового часу")
question1_2.answers.create( title: "20хв", correct: false)
question1_2.answers.create( title: "45хв", correct: true)
question1_2.answers.create( title: "до останнього гравця", correct: false)
question1_3 = quiz1.questions.create(title: "Що відбудеться, коли гравець торкнеться м’яча рукою?", description: "Це є порушенням правил, після того як гравець торкнувся мяча рукою гра зупиняється, та назначається штрафний")
question1_3.answers.create( title: "Порушенння правил", correct: true)
question1_3.answers.create( title: "Штрафний удар", correct: true)
question1_3.answers.create( title: "Дадуть пиріжок", correct: false)
question1_3.answers.create(title: "Дадуть в голову", correct: false)
quiz1.comments.create(text: "Дуже гарний тест")
quiz1.comments.create(text: "Потрібно додати питання із декількома правильними відповідями")

quiz2 = subcat1.quizzes.create(status:"published", title: "Тест на знання історії України", description: "Детальний опис тесту")
question2_1 = quiz2.questions.create(title: "У 1223 р. на Київську Русь напали орди", description: "")
question2_1.answers.create(title: "печенігів", correct: false)
question2_1.answers.create( title: "половців", correct: false)
question2_1.answers.create( title: "монголо-татар", correct: true)
question2_2 = quiz2.questions.create(title: " Визвольна війна, очолювана Богданом Хмельницьким тривала", description: "")
question2_2.answers.create( title: "1648 – 1652 рр.", correct: false)
question2_2.answers.create( title: "1652 – 1662 рр.", correct: true)
question2_2.answers.create( title: "1698 – 1700 рр.", correct: false)
question2_3 = quiz2.questions.create(title: "Перший Президент України", description: "")
question2_3.answers.create( title: "Л.Кравчук", correct: false)
question2_3.answers.create( title: "Л.Кучма", correct: false)
question2_3.answers.create( title: "М.Грушевський", correct: true)
question2_3.answers.create(title: "Ленін", correct: false)
quiz2.comments.create(text: "Потрібно додати більше питань")



# Quiz.create(category_id: 2,status:"draft", title: "Тест на знання правил футболу", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla quam. Donec arcu ex, egestas ut lobortis ac, tempus et nisl. Ut vulputate efficitur.")
# Quiz.create(category_id: 5,status:"draft", title: "Тест на знання історії України", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla quam. Donec arcu ex, egestas ut lobortis ac, tempus et nisl. Ut vulputate efficitur.")
# Quiz.create(category_id: 6,status:"draft", title: "Тест на знання історії світу", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla quam. Donec arcu ex, egestas ut lobortis ac, tempus et nisl. Ut vulputate efficitur.")
# Quiz.create(category_id: 6,status:"draft", title: "Тест на знання другої світової війни", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla quam. Donec arcu ex, egestas ut lobortis ac, tempus et nisl. Ut vulputate efficitur.")
# Quiz.create(category_id: 6,status:"draft", title: "Тест на знання першої світової війни", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla quam. Donec arcu ex, egestas ut lobortis ac, tempus et nisl. Ut vulputate efficitur.")
# Quiz.create(category_id: 3,status:"draft", title: "Тест на знання правил хокею", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla quam. Donec arcu ex, egestas ut lobortis ac, tempus et nisl. Ut vulputate efficitur.")
# Quiz.create(category_id: 2,status:"draft", title: "Тест на знання видатних футболістів", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla quam. Donec arcu ex, egestas ut lobortis ac, tempus et nisl. Ut vulputate efficitur.")
# Quiz.create(category_id: 6,status:"draft", title: "Тест на знання війни в Вєтнамі", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla quam. Donec arcu ex, egestas ut lobortis ac, tempus et nisl. Ut vulputate efficitur.")
# Quiz.create(category_id: 5,status:"draft", title: "Тест на знання Украйни в часи незалежності", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla quam. Donec arcu ex, egestas ut lobortis ac, tempus et nisl. Ut vulputate efficitur.")
# Quiz.create(category_id: 5,status:"draft", title: "Тест на знання революції гідності 2014 року", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla quam. Donec arcu ex, egestas ut lobortis ac, tempus et nisl. Ut vulputate efficitur.")


tag1 = Tag.create(tag: "футбол")
tag2 = Tag.create(tag: "спорт")
tag3 = Tag.create(tag: "м'яч")
tag4 = Tag.create(tag: "Україна")
tag5 = Tag.create(tag: "історія")
Tag.create(tag: "батьківщина")
Tag.create(tag: "світ")
Tag.create(tag: "історія")
Tag.create(tag: "всьо")
Tag.create(tag: "Гітлер")
Tag.create(tag: "Сталін")
Tag.create(tag: "голодомор")
Tag.create(tag: "друга_світова")
Tag.create(tag: "перша_світова")
Tag.create(tag: "війна")
Tag.create(tag: "Німеччина")
Tag.create(tag: "хокей")
Tag.create(tag: "лід")
Tag.create(tag: "клюшка")
Tag.create(tag: "Рональдо")
Tag.create(tag: "Блохін")
Tag.create(tag: "Шевченко")
Tag.create(tag: "Вєтнам")
Tag.create(tag: "гвинтокрил")
Tag.create(tag: "напалм")
Tag.create(tag: "1991")
Tag.create(tag: "Україна")
Tag.create(tag: "незалежність")
Tag.create(tag: "Революція")
Tag.create(tag: "Україна")
Tag.create(tag: "Яник")

quiz1.tags << tag1
quiz1.tags << tag2
quiz1.tags << tag3
quiz2.tags << tag4
quiz2.tags << tag5


# Quiz.create(category_id: 2,status:"draft", title: "4Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"review", title: "5Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"published", title: "6Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"review", title: "7Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"enhance", title: "8Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"published", title: "9Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"draft", title: "10Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"enhance", title: "11Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"draft", title: "12Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"published", title: "13Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"draft", title: "14Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"review", title: "15Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"draft", title: "16Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"enhance", title: "17Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"draft", title: "18Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"published", title: "19Тест на знання правил футболу", description: "Детальний опис тесту")
# Quiz.create(category_id: 2,status:"draft", title: "20Тест на знання правил футболу", description: "Детальний опис тесту")
