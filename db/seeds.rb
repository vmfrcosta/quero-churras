# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Grill.destroy_all


prices = (10..30).to_a

grill_params = [
{
  user: User.find(1),
  name: "Churrasqueira a gás genesis s-340 Weber",
  description:"Espeto giratório e queimador tangencial. maior suculência e com menos perigo de queimar a carne. Sabor da carne –  não se preocupe quanto ao sabor dos assados. Eles ficarão com aquele gostinho que você deseja, pois as melhores marcas apresentam BARRA FLAVORIZANTE entre a chama e carne, que tem a  dupla finalidade de produzir infravermelho para assar e defumar a sua carne com seus próprios sumos, gorduras e temperos, que se vaporizam ao cair sobre elas. Garantia total de que certamente ficarão macios e suculentos.",
  address:  "Rua Mourato Coelho, 800 - SP",
  price: prices.sample,
  grills_type: "Churrasqueira a Gas",
  status: true
},
{
  user: User.find(1),
  name: "Churrasqueira à carvão metálica 650C - Metávila - Preto" ,
  description: "Como a fonte de calor está em sua parte superior e com proximidade e potencia adequadas, você terá um assamento perfeito. É importante prestar atenção na potência da resistência, pois isso define o resultado – quanto maior, mais calor é produzido e melhor a carne fica.",
  address:  "Rua Oscar Freire, 2008 - SP",
  price: prices.sample,
  grills_type: "Churrasqueira Eletrica",
  status: true
},
{
  user: User.find(1),
  name: "Churrasqueira com 3 Espetos Vittasmart03 Arke",
  description: "Não faz fumaça, a mangueira do gás é de embutir, tem que reservar espaço definitivo para essa instalação (se você tem em seu apartamento, esta é a melhor opção, mesmo!). Usar o botijão de gás, só se você morar em casa, aí sim vai poder curtir seu espetinho de maneira legal.",
  address:  "Rua Rodrigues de Abreu, 291 - Itaguá - SP",
  price: prices.sample,
  grills_type: "Churrasqueira a Gas",
  status: true
},
{
  user: User.find(1),
  name: "Churrasqueira à carvão metálica 650C - Metávila - Preto",
  description: "Bem leve e compacta, é uma boa pedida para quem não dispensa uma boa refeição mesmo em ambientes fechados. Simples, ela traz funções de limpeza e tem um custo/benefício bacana. Grade:
  Cromada e removível, ampla e antiaderente. Na média, você consegue assar até 10 bifes pequenos simultaneamente. A cuba é esmaltada, ou seja, muito prática de limpar pois evita que a gordura entrahne na superfície do produto.",
  address:  "Rua Catão, 618 - SP",
  price: prices.sample,
  grills_type: "Churrasqueira Eletrica",
  status: true
},
{
  user: User.find(1),
  name: "Churrasqueira media a carvao portatil" ,
  description: "Corpo em chapa de aço carbono. Não precisa de pré-aquecimento. Não precisa de acabamentos, já vem pronta para uso. Sistema de suporte para espetos. Praticidade de instalação, apenas 04 parafusos. Excelente aproveitamento do calor, proporcionando economia de carvão e rapidez no preparo do churrasco. Excelente vazão da fumaça com saída de 200mm - Canos não permitem que a
  fumaça retorne para dentro do ambiente. Produto combina a variados tipos de ambientes. Excelente custo benefício comparado com a churrasqueira convencional.",
  address:  "Rua Iaiá, 213 - SP",
  price: prices.sample,
  grills_type: "Churrasqueira a Carvao",
  status: true
},
{
  user: User.find(1),
  name: "Churrasqueira à carvão metálica 650C - Metávila - Preto",
  description: "Essa churrasqueira elétrica é o sonho de qualquer assador que procura praticidade. Entrada para 3 espetos que acompanham o produto, 2 simples e 1 triplo. Uma bandeja para a gordura que cai dos alimentos também está inclusa no item. Os espetos são rotativos garantem que as carnes sejam assadas de forma homogênea sem você se preocupar. É uma churrasqueira muito fácil de usar e o acendimento é automático. Além disso, é prática para limpar, tanto por dentro quanto por fora.",
  address:  "Rua Epeira, 192 - Alto de Pinheiros São Paulo - SP",
  price: prices.sample,
  grills_type: "Churrasqueira a Eletrica",
  status: true
},
{
  user: User.find(1),
  name: "Churrasqueira A Bafo Portátil Nautika Alabama Carvão Redonda Para Camping E Lazer",
  description: "Churrasqueira portátil para pequenas porções e indicada para pessoas que necessitam de fácil manuseio e praticidade. Fabricada em aço esmaltado, a Alabama segue a linha das tradicionais churrasqueiras Nautika, acompanhando em seu acabamento pernas em aço cromado. Modelo a bafo com grelha cromada. Pintura especial enamel de alta resistência a abrasão e atóxica, evita a contaminação dos alimentos e aumenta a durabilidade do produto.
  Exclusivo sistema de ventilação lateral superior e tampa côncava com fechamento e trava que possibilitam fazer o churrasco no <bafo class=""></bafo>",
  address:  "Avenida Santo Antônio, 815",
  price: prices.sample,
  grills_type: "Churrasqueira a Carvao",
  status: true
},
{
  user: User.find(1),
  name: "Churrasqueira A Bafo Portátil Para Camping e Lazer Ntk Alexias Texas Carvão Redonda Nautika,",
  description:"Suas horas de lazer podem ficar ainda melhor com esta churrasqueira. Um produto com a conhecida qualidade Nautika, a Churrasqueira Texas é compacta e perfeita para uso em casa, parque, acampamento e onde mais sua imaginação permitir! A churrasqueira possui grelha cromada, pintura especial enamel de alta resistência a abrasão e atóxica, evitando a contaminação dos alimentos e aumentando a durabilidade do produto. Com seu exclusivo sistema de ventilação lateral e superior e tampa côncava, a churrasqueira Texas permite fazer o churrasco no bafo. Aos que adoram experimentar novas receitas, esta churrasqueira faz juz ao nome, já que permite grelhar um verdadeiro churrasco no estilo texano, com muito molho barbecue!
  A churrasqueira Texas ainda inclui um exclusivo porta-cinzas para coletar as cinzas que podem cair no chão, e uma prateleira na parte inferior, para facilitar a limpeza da churrasqueira.",
  address:  "Rua José Manoel Rodrigues, 458 - Cintra Gordinho",
  price: prices.sample,
  grills_type: "Churrasqueira a Carvao",
  status: true
},
{
  user: User.find(1),
  name: "Churrasqueira À Gás De Bancada 3 Queimadores Inox CH3001IX",
  description: "Se você está procurando comodidade na hora de assar ou grelhar carnes, nós apresentamos a Churrasqueira para bancada. Ela é ideal para apartamentos ou até mesmo para casas, onde você não irá necesistar ter todo um trabalho em fazer fogo na churrasqueira convencional. Você terá benefícios na saúde e não irá se preocupar com a sujeira, pois ela é versátil e não suja o ambiente.",
  address:  "Rua da Pátria, 809 - Vila Magini Mauá - SP",
  price: prices.sample,
  grills_type: "Churrasqueira a Gas",
  status: true
},
]




grill_params.each do |params|
  grill = Grill.new(params)
  grill.save

  booking = Booking.new(
  	user: User.find(1),
  	grill: grill,
  	check_in: Date.today,
  	check_out: Date.today,
    )
  booking.save
end
