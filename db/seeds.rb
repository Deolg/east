AdminUser.create!([
  {email: "admin@eresidence.com", encrypted_password: "$2a$11$6c.WnJVLC4TYZL39x3ZvZ.ZYUFugCvfQQMzEvk7nU3OeOKR9ks/HO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-11-28 15:46:22", last_sign_in_at: "2016-11-28 15:46:22", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
ArticleItem.create!([
  {title: "Эстония - самая благоприятная среда для бизнеса в ЕС", body: "<p>Фирма в Эстонии это: реализация товаров и услуг под эстонской европейской маркой, возможность ввозить в СНГ оборудование, технику, товары без таможенных пошлин и НДС, как уставной капитал совместного предприятия, деньги, вложенные в бизнес в СНГ вашей эстонской фирмой, будут надежно защищены как иностранные инвестиции, счета в эстонских филиалах иностранных банков с управлением онлайн, возможность получения вида на жительство в Эстонии владельцам, членам правления, директорам эстонских фирм, членам их семей, в дальнейшем получения статуса постоянного жителя ЕС через предпринимательство, открытие филиалов эстонской компании в Евросоюзе, бизнес-визы в Эстонию &mdash; во все страны Шенгена, кредиты в местных банках, дистанционная регистрация без вашего присутствия. Учитывая выгодное географическое положение, Эстония представляет собой очень удобное для ведения бизнеса государство. Находясь между Россией и западноевропейскими странами, она стала прекрасной транзитной зоной.</p>\r\n\r\n<p>Но плюсы открытия бизнеса в Эстонии не исчерпываются одним лишь её географическим положением. Чрезвычайно привлекательным является тот факт, что с 2000 года в Эстонии введена 0%-ая ставка корпоративного налога на прибыль юридических лиц. Это выгодно прежде всего тем предпринимателям, которые используют полученный доход не для выплат физическим лицам, а для вложения в дальнейшее развитие бизнеса.</p>\r\n\r\n<p>Наши специалисты с удовольствием примут активное участие в создании Вашего бизнеса. Мы предлагаем исключительное качество обслуживания вашей организации на всех стадиях её регистрации и существования. У нас вы можете заказать как разовые консультационные услуги, так и комплексное сопровождение всех юридически значимых моментов.</p>\r\n"},
  {title: "Зарегистрируйте фирму в Эстонии — это выгодно и удобно!", body: "<p>Коротко о том, что дает регистрация фирмы в Эстонии:</p>\r\n\r\n<ul>\r\n\t<li>​возможность использования маркировки на товарах &laquo;сделано в ЕС&raquo;</li>\r\n\t<li>развитый интернет-банкинг и возможность управлять счетами фирмы в Эстонии из любого места, где есть интернет</li>\r\n\t<li>получение временного ВНЖ в Эстонии</li>\r\n\t<li>работа в ЕC&nbsp;не ограничена, есть возможность открывать европейские филиалы компании</li>\r\n\t<li>можно оформить на фирму транспортное средство и вывозить его в 3-и страны по временному ввозу ( до 1 года )</li>\r\n\t<li>отсутствие транспортного налога</li>\r\n\t<li>возможность получения кредитов в местных филиалах европейских банков</li>\r\n\t<li>учреждение фирмы по доверенности</li>\r\n\t<li>оформление бизнес-виз для длительного пребывания на территории стран Шенгенского соглашения</li>\r\n</ul>\r\n"}
])
CompanyType.create!([
  {form: "ПФЛ", capital: "отсутствует", heads: "один", responsibility: "ПФЛ отвечает по обязательствам всем своим имуществом", management: "Органы управления отсутствуют"},
  {form: "Товарищество с ограниченной ответственностью", capital: "2500 EUR или отсутствует если запланированный паевой капитал не превышает 25 000 EUR", heads: "один", responsibility: "Пайщик не отвечает лично по обязательствам товарищества с ограниченной ответственностью", management: "Обязательным органом управления ТОО является правление. У ТОО должен быть совет только в случае, если это предусмотрено в уставе ТОО"},
  {form: "Акционерное общество", capital: "25000 EUR", heads: "один", responsibility: "Акционер не отвечает лично по обязательствам акционерного общества", management: "Наивысшим органом управления акционерного общества является общее собрание акционеров. У акционерного общества должны быть правление и совет"},
  {form: "Полное товарищество", capital: "отсутствует, размер взносов определяется договором товарищества", heads: "два", responsibility: "Пайщики несут по обязательствам объединения равную ответственность всем своим имуществом", management: "Обязательные органы управления отсутствуют"},
  {form: "Коммандитное товарищество", capital: "отсутствует, размер взносов определяется договором объединения", heads: "два", responsibility: "По меньшей мере, один пайщик полного товарищества отвечает по обязательствам коммерческого объединения всем своим имуществом; по меньшей мере, один пайщик коммандитного товарищества отвечает по обязательствам коммерческого объединения в размере внесенного взноса", management: "Обязательные органы управления отсутствуют"},
  {form: "Коммерческое товарищество", capital: "2500 EUR", heads: "два", responsibility: "Пайщик не отвечает лично по обязательствам коммерческого товарищества, если не оговорено иначе\t", management: "Общее собрание является высшим органом товарищества, решения принимаются на голосовании, где у каждого члена товарищества имеется один голос. Правление является органом управления товарищества"}
])
Request.create!([
  {from: "Виталий", body: "Хочу зарегать что то ", status: "processed", address: "obroshnij@gmail.com"}
])
ServiceItem.create!([
  {service_name: "ОТКРЫТИЕ КОМПАНИИ В ЭСТОНИИ"},
  {service_name: "Разработка грамотного устава фирмы, с соблюдением всех предусмотренных законодательством Эстонии актов, устав оформляется по доверенности"},
  {service_name: "Оформление всех необходимых документов для регистрации компании “под ключ”"},
  {service_name: "Предоставление эстонского офиса для фирмы, Ваш юридический адрес на территории Эстонии."},
  {service_name: "Открытие в одном из банков, текущего банковского счета."},
  {service_name: "предоставление дальнейшего бухгалтерского сопровождения фирмы"},
  {service_name: "юридические консультации"},
  {service_name: "предоставление услуг инкассо на территориях стран Балтии (Эстония, Литва, Латвия, Финляндия, Норвегия, Швеция)"}
])
