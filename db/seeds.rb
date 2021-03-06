AdminUser.create!([{email: "admin@example.com", password: "123456"}])
ArticleItem.create!([
  {title: "Открытие фирмы в Европейской стране - отличное начало для бизнеса. Наша компания оказывает полный спектр услуг по учреждению, организации и развитию Вашего бизнеса в Эстонии.", body: ""},
  {title: "Особенности ведения бизнеса в Эстонии:", body: "<ul>\r\n\t<li>Налог на нераспределенную прибыль Эстонских компаний 0%</li>\r\n\t<li>Удобная банковская инфраструктура, интернет-банкинг, возможность открытия счета по доверенности</li>\r\n\t<li>Защита бизнеса и инвестиций на законодательном уровне</li>\r\n\t<li>Возможность оформления долгосрочной бизнес-визы</li>\r\n\t<li>Дистанционное открытие или приобретение компаний</li>\r\n\t<li>Собственниками и членами правления компаний могут быть нерезиденты Эстонии</li>\r\n\t<li>Получение E-residence - электронного гражданства Эстонии</li>\r\n</ul>\r\n"}
])
CompanyType.create!([
  {form: "ПФЛ", capital: "отсутствует", heads: "один", responsibility: "ПФЛ отвечает по обязательствам всем своим имуществом", management: "Органы управления отсутствуют"},
  {form: "Товарищество с ограниченной ответственностью", capital: "2500 EUR или отсутствует если запланированный паевой капитал не превышает 25 000 EUR", heads: "один", responsibility: "Пайщик не отвечает лично по обязательствам товарищества с ограниченной ответственностью", management: "Обязательным органом управления ТОО является правление. У ТОО должен быть совет только в случае, если это предусмотрено в уставе ТОО"},
  {form: "Акционерное общество", capital: "25000 EUR", heads: "один", responsibility: "Акционер не отвечает лично по обязательствам акционерного общества", management: "Наивысшим органом управления акционерного общества является общее собрание акционеров. У акционерного общества должны быть правление и совет"},
  {form: "Полное товарищество", capital: "отсутствует, размер взносов определяется договором товарищества", heads: "два", responsibility: "Пайщики несут по обязательствам объединения равную ответственность всем своим имуществом", management: "Обязательные органы управления отсутствуют"},
  {form: "Коммандитное товарищество", capital: "отсутствует, размер взносов определяется договором объединения", heads: "два", responsibility: "По меньшей мере, один пайщик полного товарищества отвечает по обязательствам коммерческого объединения всем своим имуществом; по меньшей мере, один пайщик коммандитного товарищества отвечает по обязательствам коммерческого объединения в размере внесенного взноса", management: "Обязательные органы управления отсутствуют"},
  {form: "Коммерческое товарищество", capital: "2500 EUR", heads: "два", responsibility: "Пайщик не отвечает лично по обязательствам коммерческого товарищества, если не оговорено иначе\t", management: "Общее собрание является высшим органом товарищества, решения принимаются на голосовании, где у каждого члена товарищества имеется один голос. Правление является органом управления товарищества"}
])
Price.create!([
  {item: "Открытие компании в Эстонии", description: "500 Евро"},
  {item: "Получение юридического адреса", description: "200 Евро + НДС (в год)"},
  {item: "Бухгалтерские услуги", description: "от 40 Евро в месяц в зависимости от оборота и количества операций"},
  {item: "Юридические консультации", description: "25 Евро в час"}
])
ServiceItem.create!([
  {service_name: "Разработка грамотного устава фирмы, с соблюдением всех предусмотренных законодательством Эстонии актов, устав оформляется по доверенности"},
  {service_name: "Оформление всех необходимых документов для регистрации компании “под ключ”"},
  {service_name: "Предоставление эстонского офиса для фирмы, Ваш юридический адрес на территории Эстонии."},
  {service_name: "Открытие в одном из банков, текущего банковского счета."},
  {service_name: "предоставление дальнейшего бухгалтерского сопровождения фирмы"},
  {service_name: "юридические консультации"},
  {service_name: "Открытие компании в Эстонии"},
  {service_name: "предоставление услуг инкассо на территориях стран Шенгенской зоны"}
])
Why.create!([
  {text: "<p>В нашей компании работает команда специалистов, которая поможет начать и продолжить Ваш бизнес в одной из передовых стран ЕС. Выбирая нас, клиент получает не просто компанию, а еще и постоянную консалтинговую поддержку от наших специалистов, обширный опыт которых позволяет разобраться с практически любой поставленной задачей</p>\r\n"}
])

Contact.create(phone: '380666195446', skype: 'obroshnij', mail: 'obroshnij@gmail.com', viber: 'obroshnij')
