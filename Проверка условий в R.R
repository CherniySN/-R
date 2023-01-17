a <- 5
b <- 8
a > b
a < b
a + b <= 4

xor((a + 2) > 6, (a - 3) > 2)

(a + 2) > 6
(a - 3) >= 2

price <- c(20, 40, 190, 35, 45, 56, 34,34,87, 923)
price2 <- c(2, 40, 45, 34, 45, 65, 34,34,9, 9)
avg <- sum(price[price < 45]) / length(price[price < 45])
avg

price == price2
