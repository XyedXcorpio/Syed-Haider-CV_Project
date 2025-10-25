# Thesis Testing of Hypothesis for the Research Project with the Title "How Islamic
# is Islamic Banking, A statistical study to asses the General Public Perception
responses = read.csv("C:\\Users\\Qura tul Ain\\Documents\\FORM\\Xyed's Thesis\\islamic banking\\Response.csv")
names(responses)
responses = subset(responses, select = -c(Timestamp))

#testing of variances between gender and IBA
var_test = var.test(IBA ~ Gender,  data = responses)
bartlett.test(IBA ~ Gender,  data = responses)
leveneTest(IBA ~ Gender, data = responses, center = mean)

#T independent test Gender/IBA
t_test = t.test(IBA ~ Gender, data = responses, var.equal = TRUE)
report(t_test)

var_test = var.test(IBAA ~ Gender,  data = responses)
bartlett.test(IBAA ~ Gender,  data = responses)
t_test = t.test(IBAA ~ Gender, data = responses, var.equal = FALSE)
report(t_test)

#testing of variances between gender and IBO
var_test_2 = var.test(IBO ~ Gender,  data = responses)
leveneTest(IBO ~ Gender, data = responses, center = mean)
bartlett.test(IBO ~ Gender,  data = responses)

#T independent test Gender/IBO
t_test_2 = t.test(IBO ~ Gender, data = responses, var.equal = FALSE)
report(t_test_2)

#testing of variances between gender and IBO
leveneTest(IBO ~ AgeC, data = responses)
bartlett.test(IBO ~ AgeC, data = responses)

#ANOVA testing between ageC and IBO
oneway.test(IBO ~ AgeC, data = responses, var.equal = FALSE)

#testing of variances between gender and IBO
leveneTest(IBA ~ AgeC, data = responses)
bartlett.test(IBA ~ AgeC, data = responses)

#ANOVA testing between ageC and IBO
oneway.test(IBA ~ AgeC, data = responses, var.equal = FALSE)


#testing of variances between qualfication and IBA
leveneTest(IBA ~ Qualifications, data = responses, center = mean)
bartlett.test(IBA ~ Qualifications, data = responses)

#ANOVA testing between qualification and IBA
oneway.test(IBA ~ Qualifications, data = responses, var.equal = TRUE)

#testing of variances between qualfication and IBO
leveneTest(IBO ~ Qualifications, data = responses, center = mean)
bartlett.test(IBO ~ Qualifications, data = responses)
#ANOVA testing between qualification and IBO
oneway.test(IBO ~ Qualifications, data = responses, var.equal = TRUE)

#testing of variances between occupation and IBO
leveneTest(IBO ~ Occupation, data = responses, center = mean)
bartlett.test(IBO ~ Occupation, data = responses)

#ANOVA testing between occupation and IBO
oneway.test(IBO ~ Occupation, data = responses, var.equal = TRUE)

#testing of variances AND ANOVA between MIC and IBO
leveneTest(IBO ~ MIC, data = responses, center = mean)
bartlett.test(IBO ~ MIC, data = responses)
oneway.test(IBO ~ MIC, data = responses, var.equal = FALSE)

#testing of variances AND ANOVA between MIC and IBA
leveneTest(IBA ~ MIC, data = responses, center = mean)
bartlett.test(IBA ~ MIC, data = responses)
oneway.test(IBA ~ MIC, data = responses, var.equal = TRUE)


#testing of variances between occupation and IBA
leveneTest(IBA ~ Occupation, data = responses, center = mean)
bartlett.test(IBA ~ Occupation, data = responses)

#ANOVA testing between occupation and IBA
oneway.test(IBA ~ Occupation, data = responses, var.equal = FALSE)

oneway.test(IBO ~ AgeC, data = responses, var.equal = TRUE)

oneway.test(IBO ~ QualificationC, data = responses, var.equal = TRUE)
oneway.test(IBO ~ OccupationC, data = responses, var.equal = TRUE)


var_test <- bartlett.test(IBA ~ Gender, data = responses)
print(var_test)

gender_IBA <- t.test(IBA ~ Gender, data = responses, var.equal = TRUE)
report(gender_IBA)

var_test_2 <- var.test(IBO ~ Gender, data = responses)

gender_IBO <- t.test(IBO ~ Gender, data = responses, var.equal = FALSE)
report(gender_IBO)


var_test_3 <- bartlett.test(IBO ~ AgeC, data = responses)
oneway.test(IBO ~ AgeC, data = responses, var.equal = FALSE)

var_test_4 <- bartlett.test(IBA ~ AgeC, data = responses)
oneway.test(IBA ~ AgeC, data = responses, var.equal = TRUE)

bartlett.test(IBA ~ QualificationC, data = responses)
oneway.test(IBA ~ QualificationC, data = responses, var.equal = TRUE)

bartlett.test(IBO ~ Qualifications, data = responses)
oneway.test(IBO ~ Qualifications, data = responses, var.equal = TRUE)

bartlett.test(IBO ~ OccupationC, data = responses)
oneway.test(IBO ~ OccupationC, data = responses, var.equal = TRUE)

bartlett.test(IBO ~ MIC, data = responses)
oneway.test(IBO ~ MIC, data = responses, var.equal = FALSE)

bartlett.test(IBA ~ MIC, data = responses)
oneway.test(IBA ~ MIC, data = responses, var.equal = TRUE)

bartlett.test(IBA ~ OccupationC, data = responses)
oneway.test(IBA ~ OccupationC, data = responses, var.equal = TRUE)


names(responses)
table(responses$q3, responses$Gender)
test_q3 <- chisq.test(table(responses$q3, responses$Gender), correct = FALSE)

table(responses$q26, responses$Gender)
test_q26 <- chisq.test(table(responses$q26, responses$Gender), correct = FALSE)

table(responses$q27, responses$Gender)
test_q27 <- chisq.test(table(responses$q27, responses$Gender), correct = FALSE)

table(responses$q30, responses$Gender)
test_q30 <- chisq.test(table(responses$q30, responses$Gender), correct = FALSE)


table(responses$q30, responses$Gender)
test_q32 <- chisq.test(table(responses$q32, responses$Gender), correct = FALSE)

table(responses$q30, responses$Gender)
test_q33 <- chisq.test(table(responses$q33, responses$Gender), correct = FALSE)


table(responses$q3, responses$AgeC)
test_q3 <- chisq.test(table(responses$q3, responses$AgeC), correct = FALSE)

table(responses$q26, responses$AgeC)
test_q26 <- chisq.test(table(responses$q26, responses$AgeC), correct = FALSE)

table(responses$q27, responses$AgeC)
test_q27 <- chisq.test(table(responses$q27, responses$AgeC), correct = FALSE)

table(responses$q30, responses$AgeC)
test_q30 <- chisq.test(table(responses$q30, responses$AgeC), correct = FALSE)


table(responses$q32, responses$AgeC)
test_q32 <- chisq.test(table(responses$q32, responses$AgeC), correct = FALSE)

table(responses$q33, responses$AgeC)
test_q33 <- chisq.test(table(responses$q33, responses$AgeC), correct = FALSE)


table(responses$q3, responses$Qualifications)
test_q3 <- chisq.test(table(responses$q3, responses$Qualifications), correct = FALSE)
test_q3

table(responses$q26, responses$Qualifications)
test_q26 <- chisq.test(table(responses$q26, responses$Qualifications), correct = FALSE)
test_q26 

table(responses$q27, responses$Qualifications)
test_q27 <- chisq.test(table(responses$q27, responses$Qualifications), correct = FALSE)
test_q27

table(responses$q30, responses$Qualifications)
test_q30 <- chisq.test(table(responses$q30, responses$Qualifications), correct = FALSE)
test_q30

table(responses$q32, responses$Qualifications)
test_q32 <- chisq.test(table(responses$q32, responses$Qualifications), correct = FALSE)
test_q32

table(responses$q33, responses$Qualifications)
test_q33 <- chisq.test(table(responses$q33, responses$Qualifications), correct = FALSE)
test_q33

table(responses$q3, responses$Occupation)
test_q3 <- chisq.test(table(responses$q3, responses$Occupation), correct = FALSE)
test_q3

table(responses$q26, responses$Occupation)
test_q26 <- chisq.test(table(responses$q26, responses$Occupation), correct = FALSE)
test_q26 

table(responses$q27, responses$Occupation)
test_q27 <- chisq.test(table(responses$q27, responses$Occupation), correct = FALSE)
test_q27

table(responses$q30, responses$Occupation)
test_q30 <- chisq.test(table(responses$q30, responses$Occupation), correct = FALSE)
test_q30

table(responses$q32, responses$Occupation)
test_q32 <- chisq.test(table(responses$q32, responses$Occupation), correct = FALSE)
test_q32

table(responses$q33, responses$Occupation)
test_q33 <- chisq.test(table(responses$q33, responses$Occupation), correct = FALSE)
test_q33

table(responses$q3, responses$MIC)
test_q3 <- chisq.test(table(responses$q3, responses$MIC), correct = FALSE)
test_q3

table(responses$q26, responses$MIC)
test_q26 <- chisq.test(table(responses$q26, responses$MIC), correct = FALSE)
test_q26 

table(responses$q27, responses$MIC)
test_q27 <- chisq.test(table(responses$q27, responses$MIC), correct = FALSE)
test_q27

table(responses$q30, responses$MIC)
test_q30 <- chisq.test(table(responses$q30, responses$MIC), correct = FALSE)
test_q30

table(responses$q32, responses$MIC)
test_q32 <- chisq.test(table(responses$q32, responses$MIC), correct = FALSE)
test_q32

table(responses$q33, responses$MIC)
test_q33 <- chisq.test(table(responses$q33, responses$MIC), correct = FALSE)
test_q33

names(responses)
freq_AgeC <- table(responses$AgeC)
barplot(freq_AgeC, xlab = "Age Category", ylab = "Frequency")

freq_gender <- table(responses$Gender)
barplot(freq_gender, xlab = "Gender", ylab = "Frequency")

freq_R <- table(responses$Religion)
barplot(freq_R, xlab = "Religion", ylab = "Frequency")

freq_Quali <- table(responses$Qualifications)
barplot(freq_Quali, xlab = "Qualifications", ylab = "Frequency")

freq_occ <- table(responses$Occupation)
barplot(freq_occ, xlab = "Occupation", ylab = "Frequency")

freq_MI <- table(responses$MonthlyIncome)
barplot(freq_MI, xlab = "Monthly Income", ylab = "Frequency")
