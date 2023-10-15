# Short script to calculate how much total trade flows Taiwan has per minute.

# Taiwan Trade ------------------------------------------------------------

# all in USD
tw.exp.serv = 51.4 * 10e9 #original figures in billions USD
tw.exp.good = 330.6 * 10e9

tw.imp.serv = 56.3 * 10e9
tw.imp.good = 287.1 * 10e9

tw.imp.exp.total.usd = sum(tw.exp.serv, 
                           tw.exp.good, 
                           tw.imp.serv, 
                           tw.imp.good)

#conv to GBP
usd.gbp.2021 = 0.7271

tw.imp.exp.total.gbp = tw.imp.exp.total.usd * usd.gbp.2021


# Reading Speed -----------------------------------------------------------

avg.wpm = 280

ps.words = 585

reading.mins = words / avg.wpm


# Final Calc --------------------------------------------------------------

year.mins = 365 * 24 * 60

tw.gbp.per.min = tw.imp.exp.total.gbp / year.mins

reading.trade.flow = reading.mins * tw.gbp.per.min

