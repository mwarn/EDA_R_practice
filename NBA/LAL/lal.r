library(ggplot2)

ggplot(aes(x = CS_FG_PCT, y = PLAYER), data = data_lal, stat = 'identity') +
  geom_point(aes(size = factor(CS_FGA_PG)), color = '#331163') +
  theme(axis.text.x = element_text(colour = '#916f0d', size = 14),
        axis.text.y = element_text(colour = '#916f0d', size = 14),
        panel.background = element_rect(fill = '#92850d')) +
  xlab('Catch & Shoot Field Goal Percentage') +
  ylab('') +
  labs(size = 'C&S Attempts/Game')

ggplot(aes(x = CS_FG3_PCT, y = PLAYER), stat = 'identity', data = data_lal) +
  geom_point(aes(size = factor(CS_FG3A_PG)), color = '#331163') +
  theme(axis.text.x = element_text(colour = '#916f0d', size = 14),
        axis.text.y = element_text(colour = '#916f0d', size = 14),
        panel.background = element_rect(fill = '#92850d')) +
  xlab('Catch & Shoot 3FG Percentage') +
  ylab('') +
  labs(size = 'C&S 3FG Attempts/Game')

ggplot(aes(x = PU_FG_PCT, y = PLAYER), data = data_lal, stat = 'identity') +
  geom_point(aes(size = factor(PU_FGA_PG)), color = '#331163') +
  theme(axis.text.x = element_text(colour = '#916f0d', size = 14),
        axis.text.y = element_text(colour = '#916f0d', size = 14),
        panel.background = element_rect(fill = '#92850d')) +
  xlab('Pull-up Field Goal Percentage') +
  ylab('') +
  labs(size = 'Pull-up Attempts/Game')

ggplot(aes(x = PU_FG3_PCT, y = PLAYER), stat = 'identity', data = data_lal) +
  geom_point(aes(size = factor(PU_FG3A_PG)), color = '#331163') +
  theme(axis.text.x = element_text(colour = '#916f0d', size = 14),
        axis.text.y = element_text(colour = '#916f0d', size = 14),
        panel.background = element_rect(fill = '#92850d')) +
  xlab('Pull-up 3FG Percentage') +
  ylab('') +
  labs(size = 'PU 3FG Attempts/Game')

ggplot(aes(x = PASS_PG, y = PLAYER), data = data_lal, stat = 'identity') +
  geom_point(aes(size = factor(TCH_PG)), color = '#331163') +
  theme(axis.text.x = element_text(colour = '#916f0d', size = 10),
        axis.text.y = element_text(colour = '#916f0d', size = 12),
        panel.background = element_rect(fill = '#92850d')) +
  xlab('Passes per game') +
  ylab('') +
  labs(size = 'Touches/Game') +
  facet_grid(~AST_PG) + labs(title = 'Assists Per Game')

ggplot(aes(x = DVS, y = PLAYER), data = data_lal, stat = 'identity') +
  geom_point(aes(size = factor(DVS_PPG)), color = '#331163') +
  theme(axis.text.x = element_text(colour = '#916f0d', size = 10),
        axis.text.y = element_text(colour = '#916f0d', size = 12),
        panel.background = element_rect(fill = '#92850d')) +
  xlab('Drives Per Game') +
  ylab('') +
  labs(size = 'Drive points/Game') +
  facet_grid(~DVS_TPPG) + labs(title = 'Team PPG created by Drives')

ggplot(aes(x = DIST_OFF/GP, y = PLAYER), data = data_lal) +
  geom_point(aes(size = factor(MIN)), color = '#331163') +
  theme(axis.text.x = element_text(colour = '#916f0d', size = 14),
        axis.text.y = element_text(colour = '#916f0d', size = 14),
        panel.background = element_rect(fill = '#92850d')) +
  xlab('Distance/Game playing Offense') +
  ylab('') +
  labs(size = 'Minutes/Game')

ggplot(aes(x = DIST_DEF/GP, y = PLAYER), data = data_lal, stat = 'identity') +
  geom_point(aes(size = factor(MIN)), color = '#331163') +
  theme(axis.text.x = element_text(colour = '#916f0d', size = 14),
        axis.text.y = element_text(colour = '#916f0d', size = 14),
        panel.background = element_rect(fill = '#92850d')) +
  xlab('Distance/Game playing Defense') +
  ylab('') +
  labs(size = 'Minutes/Game') +
  facet_grid(~STL_PG) + labs(title = 'Steals Per Game')

ggplot(aes(x = FGA_CLOSE, y = PLAYER), data = data_lal, stat = 'identity') +
  geom_point(size = 6, color = '#331163') +
  theme(axis.text.x = element_text(colour = '#916f0d', size = 14),
        axis.text.y = element_text(colour = '#916f0d', size = 14),
        panel.background = element_rect(fill = '#92850d')) +
  xlab('Field Goal Attempts near the Rim') +
  ylab('') +
  facet_grid(~FGP_CLOSE) + labs(title = 'Field Goal Percentage near Rim')




