# Overall
data = for_R

successful = data$...1
Attitude_before = data$...2
Attitude_after = data$...3
length = data$...4

fit1 = lm(Attitude_after ~ Attitude_before + successful + length)
summary(fit1)

apa.reg.table(lm(Attitude_after ~ Attitude_before + successful + length),filename = "table1",table.number = 4)

# Male
data_male = male

successful_male = data_male$...1
Attitude_before_male = data_male$...2
Attitude_after_male = data_male$...3
length_male = data_male$...4

fit2 = lm(Attitude_after_male ~ Attitude_before_male + successful_male + length_male)
summary(fit2)

library(apaTables)
apa.reg.table(lm(Attitude_after_male ~ Attitude_before_male + successful_male + length_male),filename = "table2",table.number = 5)


# Female
data_female = female

successful_female = data_female$...1
Attitude_before_female = data_female$...2
Attitude_after_female = data_female$...3
length_female = data_female$...4

fit3 = lm(Attitude_after_female ~ Attitude_before_female + successful_female + length_female)
summary(fit3)

apa.reg.table(lm(Attitude_after_female ~ Attitude_before_female + successful_female + length_female),filename = "table3",table.number = 6)
