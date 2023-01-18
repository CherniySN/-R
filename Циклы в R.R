kind.icecream <- c("пломбир", "сливочное", "молочное", "крем-брюле", "шербет", "мягкое (софуто-куриму)", "фруктовый лёд", "лакомка", "эскимо")
new.icecream <- c('сливочное', 'молочное', 'крем-брюле', 'пломбир','козье')

for (i in new.icecream){
  print(i)
}

for (i in new.icecream){
  if (i %in% kind.icecream){
    print('Такой вид мороженного у нас есть!')
  } else {
    print('Такого мороженого нет, и мы его добавили!')
    kind.icecream <- c(kind.icecream, i)
  }
}

icecream = 10

while (icecream > 1) {
  icecream <- icecream - 1
  cat('Съели одно мороженное, осталось:', icecream)
}
cat('Осталось шт.:', icecream)