library(covid19.analytics)

# Data
ag <- covid19.data(case = "aggregated")
View(ag)
tsc <- covid19.data(case = 'ts-confirmed')
tsa <- covid19.data(case = "ts-ALL")

# summary
report.summary(Nentries = 10,
               graphical.output = T)


# Totals per Location
tots.per.location(tsc,
                  geo.loc = c("US", "Kenya"))

#  Growth Rate
growth.rate(tsc,
            geo.loc = "Kenya")

#  Totals Plot
totals.plt(tsa,
           c("Kenya"))

# Live World Map
live.map(tsc)

#  SIR
generate.SIR.model(tsc,
                   "Kenya",
                   tot.population = 48700000)
