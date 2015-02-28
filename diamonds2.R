library(ggplot2)
data(diamonds)
summary(diamonds)
ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_histogram(fill = 'red', colour = 'black')

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_bar(fill = 'red', colour = 'black')

ggplot(aes(carat, price), data = diamonds) +
  geom_point(alpha = 1/100)

ggplot(aes(carat, price), data = diamonds) +
  geom_point(alpha = 1/10)

ggplot(aes(price, carat), data = diamonds) +
  geom_point(alpha = 1/10)

ggplot(aes(price, carat), data = diamonds) +
  geom_point(alpha = 1/10, colour = 'red')

ggplot(aes(price, carat), data = diamonds) +
  geom_point(alpha = 1/10, colour = 'red', aes(size = carat))

ggplot(aes(price, clarity), data = diamonds) +
  geom_point(alpha = 1/10, colour = 'red', aes(size = price))

ggplot(aes(price, color), data = diamonds) +
  geom_point(alpha = 1/10, colour = 'red', aes(size = price))

ggplot(aes(price, depth), data = diamonds) +
  geom_point(alpha = 1/10, colour = 'red', aes(size = price))

ggplot(aes(price, cut), data = diamonds) +
  geom_point(alpha = 1/10, colour = 'red', aes(size = price))

ggplot(aes(price, cut), data = diamonds) +
  geom_dotplot(alpha = 1/10, colour = 'red', aes(size = price))

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_dotplot(fill = 'red', colour = 'black')

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_bar(fill = 'red', colour = 'black') +
  stat_bin(breaks=seq(500,25000,by=1000))

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_bar(fill = '#f30000', colour = 'black') +
  theme(panel.background = element_rect(fill = '#004e00'))

qplot(x = price, data = diamonds) + facet_wrap(~cut)

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_bar(fill = '#f30000', colour = 'black') +
  scale_x_continuous(limits = c(200, 25000))
  theme(panel.background = element_rect(fill = '#004e00'))

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_bar(fill = '#f30000', colour = 'black') +
  scale_x_continuous(limits = c(200, 20000), breaks = seq(200, 20000, 1000)) +
  theme(panel.background = element_rect(fill = '#004e00'))

ggplot(aes(x = price), data = diamonds, binwidth = 100) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_bar(fill = '#f30000', colour = 'black') +
  scale_x_continuous(limits = c(500, 20000), breaks = seq(500, 20000, 1000)) +
  theme(panel.background = element_rect(fill = '#004e00'))

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_histogram(fill = '#f30000', colour = 'black', binwidth = 1000) +
  scale_x_continuous(limits = c(500, 20000), breaks = seq(500, 20000, 1000)) +
  theme(panel.background = element_rect(fill = '#004e00')) +
  facet_wrap(~ cut)

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_histogram(fill = '#f30000', colour = 'black', binwidth = 100) +
  scale_x_continuous(limits = c(16000, 19000), breaks = seq(16000, 19000, 250)) +
  theme(panel.background = element_rect(fill = '#004e00'))

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_histogram(fill = '#f30000', colour = 'black', binwidth = 100) +
  scale_x_continuous(limits = c(300, 2000), breaks = seq(300, 2000, 20)) +
  theme(panel.background = element_rect(fill = '#004e00'))

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_histogram(fill = '#f30000', colour = 'black', binwidth = 10) +
  scale_x_continuous(limits = c(300, 800), breaks = seq(300, 800, 20)) +
  theme(panel.background = element_rect(fill = '#004e00'))

summary(diamonds$cut)

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_histogram(fill = '#f30000', colour = 'black', binwidth = 10) +
  scale_x_continuous(limits = c(300, 800), breaks = seq(300, 800, 20)) +
  theme(panel.background = element_rect(fill = '#004e00')) +
  facet_wrap(~ cut, scales = 'free_y')

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_histogram(fill = '#f30000', colour = 'black', binwidth = 50) +
  scale_x_continuous(limits = c(300, 800), breaks = seq(300, 800, 20)) +
  theme(panel.background = element_rect(fill = '#004e00')) +
  facet_wrap(~ cut, scales = 'free_y')

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_histogram(fill = '#f30000', colour = 'black', binwidth = 100) +
  scale_x_continuous(limits = c(300, 800), breaks = seq(300, 800, 20)) +
  theme(panel.background = element_rect(fill = '#004e00')) +
  facet_wrap(~ cut, scales = 'free_y')

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_histogram(fill = '#f30000', colour = 'black', binwidth = 10) +
  scale_x_continuous(limits = c(300, 800), breaks = seq(300, 800, 50)) +
  theme(panel.background = element_rect(fill = '#004e00')) +
  facet_wrap(~ cut, scales = 'free_y')  

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_histogram(fill = '#f30000', colour = 'black', binwidth = 1) +
  scale_x_continuous(limits = c(300, 800), breaks = seq(300, 800, 50)) +
  theme(panel.background = element_rect(fill = '#004e00')) +
  facet_wrap(~ cut, scales = 'free_y') 

ggplot(aes(x = price), data = diamonds) +
  xlab('Price of Diamonds') +
  ylab('Diamonds') +
  geom_histogram(fill = '#f30000', colour = 'black', binwidth = 5) +
  scale_x_continuous(limits = c(300, 400), breaks = seq(300, 400, 5)) +
  theme(panel.background = element_rect(fill = '#004e00')) +
  facet_wrap(~ cut, scales = 'free_y') 

problem set 4

ggplot(aes(x = price, y = x), data = diamonds) +
  geom_point()

ggplot(aes(x = x, y = price), data = diamonds) +
  geom_point()

with(diamonds, cor.test(price, x, method = 'pearson'))

with(diamonds, cor.test(price, y, method = 'pearson'))

with(diamonds, cor.test(price, z, method = 'pearson'))

ggplot(aes(x = price, y = depth), data = diamonds) +
  geom_point(alpha = 1/100) +
  scale_x_continuous(breaks = 2)

with(diamonds, cor.test(price, depth, method = 'pearson'))

ggplot(aes(x = price, y = carat), data = diamonds) +
  geom_point()

ggplot(aes(x = price, y = carat), data = diamonds) +
  geom_point(alpha = 1/100)
