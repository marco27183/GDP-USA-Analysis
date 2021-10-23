pmi_gdp_raw = read.csv("./data/TS_Analysis_PMI_GDP.csv", row.names = 1)

pmi_gdp_raw[,1] = pmi_gdp_raw[,1]*100

pmi_gdp_ts = ts(pmi_gdp_raw, start=c(1947,4,1), frequency=12)

plot(stl(pmi_gdp_ts[,1:9], s.window=12, na.action=na.omit))
