# encoding: utf-8

Category.delete_all
ActiveRecord::Base.connection.execute("ALTER TABLE categories AUTO_INCREMENT = 1")
it = Category.create(:name => "Programming & IT")
design = Category.create(:name => "Design & Multimedia")
trans = Category.create(:name => "Writing & Translation")

SubCategory.delete_all
ActiveRecord::Base.connection.execute("ALTER TABLE sub_categories AUTO_INCREMENT = 1")
SubCategory.create(:category => it, :name => "Web Development")
SubCategory.create(:category => it, :name => "Software Development")
SubCategory.create(:category => it, :name => "Mobile Development")
SubCategory.create(:category => it, :name => "QA")
SubCategory.create(:category => it, :name => "Project Management")
SubCategory.create(:category => it, :name => "Network and System")
SubCategory.create(:category => it, :name => "Administration")
SubCategory.create(:category => it, :name => "Other")
SubCategory.create(:category => design, :name => "UI Design")
SubCategory.create(:category => design, :name => "Graphics & Illustration")
SubCategory.create(:category => design, :name => "Animation")
SubCategory.create(:category => design, :name => "Other")
SubCategory.create(:category => trans, :name => "Articles")
SubCategory.create(:category => trans, :name => "Blogs")
SubCategory.create(:category => trans, :name => "Copywriting")
SubCategory.create(:category => trans, :name => "Technincal Writing")
SubCategory.create(:category => trans, :name => "Translations")
SubCategory.create(:category => trans, :name => "Other")

Continent.delete_all
ActiveRecord::Base.connection.execute("ALTER TABLE continents AUTO_INCREMENT = 1")
africa = Continent.create(:iso => 'AF', :name => 'Africa')
asia = Continent.create(:iso => 'AS', :name => 'Asia')
europe = Continent.create(:iso => 'EU', :name => 'Europe')
n_america = Continent.create(:iso => 'NA', :name => 'North America')
s_america = Continent.create(:iso => 'SA', :name => 'South America')
oceania = Continent.create(:iso => 'OC', :name => 'Oceania')
antartica = Continent.create(:iso => 'AN', :name => 'Antarctica')

Country.delete_all
ActiveRecord::Base.connection.execute("ALTER TABLE countries AUTO_INCREMENT = 1")
Country.create(:iso => 'AF', :continent => asia, :name => "Afghanistan")
Country.create(:iso => 'AX', :continent => europe, :name => "Åland Islands")
Country.create(:iso => 'AL', :continent => europe, :name => "Albania")
Country.create(:iso => 'DZ', :continent => africa, :name => "Algeria")
Country.create(:iso => 'AS', :continent => oceania, :name => "American Samoa")
Country.create(:iso => 'AD', :continent => europe, :name => "Andorra")
Country.create(:iso => 'AO', :continent => africa, :name => "Angola")
Country.create(:iso => 'AI', :continent => n_america, :name => "Anguilla")
Country.create(:iso => 'AQ', :continent => antartica, :name => "Antarctica")
Country.create(:iso => 'AG', :continent => n_america, :name => "Antigua and Barbuda")
Country.create(:iso => 'AR', :continent => s_america, :name => "Argentina")
Country.create(:iso => 'AM', :continent => asia, :name => "Armenia")
Country.create(:iso => 'AW', :continent => n_america, :name => "Aruba")
Country.create(:iso => 'AU', :continent => oceania, :name => "Australia")
Country.create(:iso => 'AT', :continent => europe, :name => "Austria")
Country.create(:iso => 'AZ', :continent => asia, :name => "Azerbaijan")
Country.create(:iso => 'BS', :continent => n_america, :name => "Bahamas")
Country.create(:iso => 'BH', :continent => asia, :name => "Bahrain")
Country.create(:iso => 'BD', :continent => asia, :name => "Bangladesh")
Country.create(:iso => 'BB', :continent => n_america, :name => "Barbados")
Country.create(:iso => 'BY', :continent => europe, :name => "Belarus")
Country.create(:iso => 'BE', :continent => europe, :name => "Belgium")
Country.create(:iso => 'BZ', :continent => n_america, :name => "Belize")
Country.create(:iso => 'BJ', :continent => africa, :name => "Benin")
Country.create(:iso => 'BM', :continent => n_america, :name => "Bermuda")
Country.create(:iso => 'BT', :continent => asia, :name => "Bhutan")
Country.create(:iso => 'BO', :continent => s_america, :name => "Bolivia")
Country.create(:iso => 'BQ', :continent => n_america, :name => "Bonaire, Sint Eustatius and Saba")
Country.create(:iso => 'BA', :continent => europe, :name => "Bosnia and Herzegovina")
Country.create(:iso => 'BW', :continent => africa, :name => "Botswana")
Country.create(:iso => 'BV', :continent => antartica, :name => "Bouvet Island (Bouvetoya)")
Country.create(:iso => 'BR', :continent => s_america, :name => "Brazil")
Country.create(:iso => 'IO', :continent => asia, :name => "British Indian Ocean Territory (Chagos Archipelago)")
Country.create(:iso => 'VG', :continent => n_america, :name => "British Virgin Islands")
Country.create(:iso => 'BN', :continent => asia, :name => "Brunei Darussalam")
Country.create(:iso => 'BG', :continent => europe, :name => "Bulgaria")
Country.create(:iso => 'BF', :continent => africa, :name => "Burkina Faso")
Country.create(:iso => 'BI', :continent => africa, :name => "Burundi")
Country.create(:iso => 'KH', :continent => asia, :name => "Cambodia")
Country.create(:iso => 'CM', :continent => africa, :name => "Cameroon")
Country.create(:iso => 'CA', :continent => n_america, :name => "Canada")
Country.create(:iso => 'CV', :continent => africa, :name => "Cape Verde")
Country.create(:iso => 'KY', :continent => n_america, :name => "Cayman Islands")
Country.create(:iso => 'CF', :continent => africa, :name => "Central African Republic")
Country.create(:iso => 'TD', :continent => africa, :name => "Chad")
Country.create(:iso => 'CL', :continent => s_america, :name => "Chile")
Country.create(:iso => 'CN', :continent => asia, :name => "China")
Country.create(:iso => 'CX', :continent => asia, :name => "Christmas Island")
Country.create(:iso => 'CC', :continent => asia, :name => "Cocos (Keeling) Islands")
Country.create(:iso => 'CO', :continent => s_america, :name => "Colombia")
Country.create(:iso => 'KM', :continent => africa, :name => "Comoros")
Country.create(:iso => 'CD', :continent => africa, :name => "Congo")
Country.create(:iso => 'CG', :continent => africa, :name => "Congo")
Country.create(:iso => 'CK', :continent => oceania, :name => "Cook Islands")
Country.create(:iso => 'CR', :continent => n_america, :name => "Costa Rica")
Country.create(:iso => 'CI', :continent => africa, :name => "Cote d'Ivoire")
Country.create(:iso => 'HR', :continent => europe, :name => "Croatia")
Country.create(:iso => 'CU', :continent => n_america, :name => "Cuba")
Country.create(:iso => 'CW', :continent => n_america, :name => "Curaçao")
Country.create(:iso => 'CY', :continent => asia, :name => "Cyprus")
Country.create(:iso => 'CZ', :continent => europe, :name => "Czech Republic")
Country.create(:iso => 'DK', :continent => europe, :name => "Denmark")
Country.create(:iso => 'DJ', :continent => africa, :name => "Djibouti")
Country.create(:iso => 'DM', :continent => n_america, :name => "Dominica")
Country.create(:iso => 'DO', :continent => n_america, :name => "Dominican Republic")
Country.create(:iso => 'EC', :continent => s_america, :name => "Ecuador")
Country.create(:iso => 'EG', :continent => africa, :name => "Egypt")
Country.create(:iso => 'SV', :continent => n_america, :name => "El Salvador")
Country.create(:iso => 'GQ', :continent => africa, :name => "Equatorial Guinea")
Country.create(:iso => 'ER', :continent => africa, :name => "Eritrea")
Country.create(:iso => 'EE', :continent => europe, :name => "Estonia")
Country.create(:iso => 'ET', :continent => africa, :name => "Ethiopia")
Country.create(:iso => 'FO', :continent => europe, :name => "Faroe Islands")
Country.create(:iso => 'FK', :continent => s_america, :name => "Falkland Islands (Malvinas)")
Country.create(:iso => 'FJ', :continent => oceania, :name => "Fiji")
Country.create(:iso => 'FI', :continent => europe, :name => "Finland")
Country.create(:iso => 'FR', :continent => europe, :name => "France")
Country.create(:iso => 'GF', :continent => s_america, :name => "French Guiana")
Country.create(:iso => 'PF', :continent => oceania, :name => "French Polynesia")
Country.create(:iso => 'TF', :continent => antartica, :name => "French Southern Territories")
Country.create(:iso => 'GA', :continent => africa, :name => "Gabon")
Country.create(:iso => 'GM', :continent => africa, :name => "Gambia")
Country.create(:iso => 'GE', :continent => asia, :name => "Georgia")
Country.create(:iso => 'DE', :continent => europe, :name => "Germany")
Country.create(:iso => 'GH', :continent => africa, :name => "Ghana")
Country.create(:iso => 'GI', :continent => europe, :name => "Gibraltar")
Country.create(:iso => 'GR', :continent => europe, :name => "Greece")
Country.create(:iso => 'GL', :continent => n_america, :name => "Greenland")
Country.create(:iso => 'GD', :continent => n_america, :name => "Grenada")
Country.create(:iso => 'GP', :continent => n_america, :name => "Guadeloupe")
Country.create(:iso => 'GU', :continent => oceania, :name => "Guam")
Country.create(:iso => 'GT', :continent => n_america, :name => "Guatemala")
Country.create(:iso => 'GG', :continent => europe, :name => "Guernsey")
Country.create(:iso => 'GN', :continent => africa, :name => "Guinea")
Country.create(:iso => 'GW', :continent => africa, :name => "Guinea-Bissau")
Country.create(:iso => 'GY', :continent => s_america, :name => "Guyana")
Country.create(:iso => 'HT', :continent => n_america, :name => "Haiti")
Country.create(:iso => 'HM', :continent => antartica, :name => "Heard Island and McDonald Islands")
Country.create(:iso => 'VA', :continent => europe, :name => "Holy See (Vatican City State)")
Country.create(:iso => 'HN', :continent => n_america, :name => "Honduras")
Country.create(:iso => 'HK', :continent => asia, :name => "Hong Kong")
Country.create(:iso => 'HU', :continent => europe, :name => "Hungary")
Country.create(:iso => 'IS', :continent => europe, :name => "Iceland")
Country.create(:iso => 'IN', :continent => asia, :name => "India")
Country.create(:iso => 'ID', :continent => asia, :name => "Indonesia")
Country.create(:iso => 'IR', :continent => asia, :name => "Iran")
Country.create(:iso => 'IQ', :continent => asia, :name => "Iraq")
Country.create(:iso => 'IE', :continent => europe, :name => "Ireland")
Country.create(:iso => 'IM', :continent => europe, :name => "Isle of Man")
Country.create(:iso => 'IL', :continent => asia, :name => "Israel")
Country.create(:iso => 'IT', :continent => europe, :name => "Italy")
Country.create(:iso => 'JM', :continent => n_america, :name => "Jamaica")
Country.create(:iso => 'JP', :continent => asia, :name => "Japan")
Country.create(:iso => 'JE', :continent => europe, :name => "Jersey")
Country.create(:iso => 'JO', :continent => asia, :name => "Jordan")
Country.create(:iso => 'KZ', :continent => asia, :name => "Kazakhstan")
Country.create(:iso => 'KE', :continent => africa, :name => "Kenya")
Country.create(:iso => 'KI', :continent => oceania, :name => "Kiribati")
Country.create(:iso => 'KP', :continent => asia, :name => "Democratic People's Republic of Korea")
Country.create(:iso => 'KR', :continent => asia, :name => "Republic of Korea")
Country.create(:iso => 'KW', :continent => asia, :name => "Kuwait")
Country.create(:iso => 'KG', :continent => asia, :name => "Kyrgyz Republic")
Country.create(:iso => 'LA', :continent => asia, :name => "Lao People's Democratic Republic")
Country.create(:iso => 'LV', :continent => europe, :name => "Latvia")
Country.create(:iso => 'LB', :continent => asia, :name => "Lebanon")
Country.create(:iso => 'LS', :continent => africa, :name => "Lesotho")
Country.create(:iso => 'LR', :continent => africa, :name => "Liberia")
Country.create(:iso => 'LY', :continent => africa, :name => "Libya")
Country.create(:iso => 'LI', :continent => europe, :name => "Liechtenstein")
Country.create(:iso => 'LT', :continent => europe, :name => "Lithuania")
Country.create(:iso => 'LU', :continent => europe, :name => "Luxembourg")
Country.create(:iso => 'MO', :continent => asia, :name => "Macao")
Country.create(:iso => 'MK', :continent => europe, :name => "Macedonia")
Country.create(:iso => 'MG', :continent => africa, :name => "Madagascar")
Country.create(:iso => 'MW', :continent => africa, :name => "Malawi")
Country.create(:iso => 'MY', :continent => asia, :name => "Malaysia")
Country.create(:iso => 'MV', :continent => asia, :name => "Maldives")
Country.create(:iso => 'ML', :continent => africa, :name => "Mali")
Country.create(:iso => 'MT', :continent => europe, :name => "Malta")
Country.create(:iso => 'MH', :continent => oceania, :name => "Marshall Islands")
Country.create(:iso => 'MQ', :continent => n_america, :name => "Martinique")
Country.create(:iso => 'MR', :continent => africa, :name => "Mauritania")
Country.create(:iso => 'MU', :continent => africa, :name => "Mauritius")
Country.create(:iso => 'YT', :continent => africa, :name => "Mayotte")
Country.create(:iso => 'MX', :continent => n_america, :name => "Mexico")
Country.create(:iso => 'FM', :continent => oceania, :name => "Micronesia")
Country.create(:iso => 'MD', :continent => europe, :name => "Moldova")
Country.create(:iso => 'MC', :continent => europe, :name => "Monaco")
Country.create(:iso => 'MN', :continent => asia, :name => "Mongolia")
Country.create(:iso => 'ME', :continent => europe, :name => "Montenegro")
Country.create(:iso => 'MS', :continent => n_america, :name => "Montserrat")
Country.create(:iso => 'MA', :continent => africa, :name => "Morocco")
Country.create(:iso => 'MZ', :continent => africa, :name => "Mozambique")
Country.create(:iso => 'MM', :continent => asia, :name => "Myanmar")
Country.create(:iso => 'NA', :continent => africa, :name => "Namibia")
Country.create(:iso => 'NR', :continent => oceania, :name => "Nauru")
Country.create(:iso => 'NP', :continent => asia, :name => "Nepal")
Country.create(:iso => 'NL', :continent => europe, :name => "Netherlands")
Country.create(:iso => 'NC', :continent => oceania, :name => "New Caledonia")
Country.create(:iso => 'NZ', :continent => oceania, :name => "New Zealand")
Country.create(:iso => 'NI', :continent => n_america, :name => "Nicaragua")
Country.create(:iso => 'NE', :continent => africa, :name => "Niger")
Country.create(:iso => 'NG', :continent => africa, :name => "Nigeria")
Country.create(:iso => 'NU', :continent => oceania, :name => "Niue")
Country.create(:iso => 'NF', :continent => oceania, :name => "Norfolk Island")
Country.create(:iso => 'MP', :continent => oceania, :name => "Northern Mariana Islands")
Country.create(:iso => 'NO', :continent => europe, :name => "Norway")
Country.create(:iso => 'OM', :continent => asia, :name => "Oman")
Country.create(:iso => 'PK', :continent => asia, :name => "Pakistan")
Country.create(:iso => 'PW', :continent => oceania, :name => "Palau")
Country.create(:iso => 'PS', :continent => asia, :name => "Palestinian Territory")
Country.create(:iso => 'PA', :continent => n_america, :name => "Panama")
Country.create(:iso => 'PG', :continent => oceania, :name => "Papua New Guinea")
Country.create(:iso => 'PY', :continent => s_america, :name => "Paraguay")
Country.create(:iso => 'PE', :continent => s_america, :name => "Peru")
Country.create(:iso => 'PH', :continent => asia, :name => "Philippines")
Country.create(:iso => 'PN', :continent => oceania, :name => "Pitcairn Islands")
Country.create(:iso => 'PL', :continent => europe, :name => "Poland")
Country.create(:iso => 'PT', :continent => europe, :name => "Portugal")
Country.create(:iso => 'PR', :continent => n_america, :name => "Puerto Rico")
Country.create(:iso => 'QA', :continent => asia, :name => "Qatar")
Country.create(:iso => 'RE', :continent => africa, :name => "Réunion")
Country.create(:iso => 'RO', :continent => europe, :name => "Romania")
Country.create(:iso => 'RU', :continent => europe, :name => "Russian Federation")
Country.create(:iso => 'RW', :continent => africa, :name => "Rwanda")
Country.create(:iso => 'BL', :continent => n_america, :name => "Saint Barthélemy")
Country.create(:iso => 'SH', :continent => africa, :name => "Saint Helena, Ascension and Tristan da Cunha")
Country.create(:iso => 'KN', :continent => n_america, :name => "Saint Kitts and Nevis")
Country.create(:iso => 'LC', :continent => n_america, :name => "Saint Lucia")
Country.create(:iso => 'MF', :continent => n_america, :name => "Saint Martin")
Country.create(:iso => 'PM', :continent => n_america, :name => "Saint Pierre and Miquelon")
Country.create(:iso => 'VC', :continent => n_america, :name => "Saint Vincent and the Grenadines")
Country.create(:iso => 'WS', :continent => oceania, :name => "Samoa")
Country.create(:iso => 'SM', :continent => europe, :name => "San Marino")
Country.create(:iso => 'ST', :continent => africa, :name => "Sao Tome and Principe")
Country.create(:iso => 'SA', :continent => asia, :name => "Saudi Arabia")
Country.create(:iso => 'SN', :continent => africa, :name => "Senegal")
Country.create(:iso => 'RS', :continent => europe, :name => "Serbia")
Country.create(:iso => 'SC', :continent => africa, :name => "Seychelles")
Country.create(:iso => 'SL', :continent => africa, :name => "Sierra Leone")
Country.create(:iso => 'SG', :continent => asia, :name => "Singapore")
Country.create(:iso => 'SX', :continent => n_america, :name => "Sint Maarten (Dutch part)")
Country.create(:iso => 'SK', :continent => europe, :name => "Slovakia (Slovak Republic)")
Country.create(:iso => 'SI', :continent => europe, :name => "Slovenia")
Country.create(:iso => 'SB', :continent => oceania, :name => "Solomon Islands")
Country.create(:iso => 'SO', :continent => africa, :name => "Somalia")
Country.create(:iso => 'ZA', :continent => africa, :name => "South Africa")
Country.create(:iso => 'GS', :continent => antartica, :name => "South Georgia and the South Sandwich Islands")
Country.create(:iso => 'SS', :continent => africa, :name => "South Sudan")
Country.create(:iso => 'ES', :continent => europe, :name => "Spain")
Country.create(:iso => 'LK', :continent => asia, :name => "Sri Lanka")
Country.create(:iso => 'SD', :continent => africa, :name => "Sudan")
Country.create(:iso => 'SR', :continent => s_america, :name => "Suriname")
Country.create(:iso => 'SJ', :continent => europe, :name => "Svalbard & Jan Mayen Islands")
Country.create(:iso => 'SZ', :continent => africa, :name => "Swaziland")
Country.create(:iso => 'SE', :continent => europe, :name => "Sweden")
Country.create(:iso => 'CH', :continent => europe, :name => "Switzerland")
Country.create(:iso => 'SY', :continent => asia, :name => "Syrian Arab Republic")
Country.create(:iso => 'TW', :continent => asia, :name => "Taiwan")
Country.create(:iso => 'TJ', :continent => asia, :name => "Tajikistan")
Country.create(:iso => 'TZ', :continent => africa, :name => "Tanzania")
Country.create(:iso => 'TH', :continent => asia, :name => "Thailand")
Country.create(:iso => 'TL', :continent => asia, :name => "Timor-Leste")
Country.create(:iso => 'TG', :continent => africa, :name => "Togo")
Country.create(:iso => 'TK', :continent => oceania, :name => "Tokelau")
Country.create(:iso => 'TO', :continent => oceania, :name => "Tonga")
Country.create(:iso => 'TT', :continent => n_america, :name => "Trinidad and Tobago")
Country.create(:iso => 'TN', :continent => africa, :name => "Tunisia")
Country.create(:iso => 'TR', :continent => asia, :name => "Turkey")
Country.create(:iso => 'TM', :continent => asia, :name => "Turkmenistan")
Country.create(:iso => 'TC', :continent => n_america, :name => "Turks and Caicos Islands")
Country.create(:iso => 'TV', :continent => oceania, :name => "Tuvalu")
Country.create(:iso => 'UG', :continent => africa, :name => "Uganda")
Country.create(:iso => 'UA', :continent => europe, :name => "Ukraine")
Country.create(:iso => 'AE', :continent => asia, :name => "United Arab Emirates")
Country.create(:iso => 'GB', :continent => europe, :name => "United Kingdom of Great Britain & Northern Ireland")
Country.create(:iso => 'US', :continent => n_america, :name => "United States of America")
Country.create(:iso => 'UM', :continent => oceania, :name => "United States Minor Outlying Islands")
Country.create(:iso => 'VI', :continent => n_america, :name => "United States Virgin Islands")
Country.create(:iso => 'UY', :continent => s_america, :name => "Uruguay")
Country.create(:iso => 'UZ', :continent => asia, :name => "Uzbekistan")
Country.create(:iso => 'VU', :continent => oceania, :name => "Vanuatu")
Country.create(:iso => 'VE', :continent => s_america, :name => "Venezuela")
Country.create(:iso => 'VN', :continent => asia, :name => "Vietnam")
Country.create(:iso => 'WF', :continent => oceania, :name => "Wallis and Futuna")
Country.create(:iso => 'EH', :continent => africa, :name => "Western Sahara")
Country.create(:iso => 'YE', :continent => asia, :name => "Yemen")
Country.create(:iso => 'ZM', :continent => africa, :name => "Zambia")
Country.create(:iso => 'ZW', :continent => africa, :name => "Zimbabwe")
