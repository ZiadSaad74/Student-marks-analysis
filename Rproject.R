# StudentsPerformance$gender[StudentsPerformance$gender=="male"]<-0 
#StudentsPerformance$gender[StudentsPerformance$gender=="female"]<-1
#StudentsPerformance$`race/ethnicity`[StudentsPerformance$`race/ethnicity`=="group B"]<-1
#StudentsPerformance$`race/ethnicity`[StudentsPerformance$`race/ethnicity`=="group A"]<-0
#StudentsPerformance$`race/ethnicity`[StudentsPerformance$`race/ethnicity`=="group C"]<-2
#StudentsPerformance$`race/ethnicity`[StudentsPerformance$`race/ethnicity`=="group D"]<-3
#StudentsPerformance$`race/ethnicity`[StudentsPerformance$`race/ethnicity`=="group E"]<-4
# unique(StudentsPerformance$`parental level of education`)
# StudentsPerformance$`parental level of education`[StudentsPerformance$`parental level of education`=="bachelor's degree"]<-1
# StudentsPerformance$`parental level of education`[StudentsPerformance$`parental level of education`=="associate's degree"]<-0
# StudentsPerformance$`parental level of education`[StudentsPerformance$`parental level of education`=="some college"]<-2
# StudentsPerformance$`parental level of education`[StudentsPerformance$`parental level of education`=="high school" ]<-3
# StudentsPerformance$`parental level of education`[StudentsPerformance$`parental level of education`=="master's degree"]<-4
# StudentsPerformance$`parental level of education`[StudentsPerformance$`parental level of education`=="some high school"]<-5
# unique(StudentsPerformance$`lunch`)
# StudentsPerformance$`lunch`[StudentsPerformance$`lunch`=="standard"]<-1
# StudentsPerformance$`lunch`[StudentsPerformance$`lunch`=="free/reduced"]<-0
# unique(StudentsPerformance$`test preparation course`)
# StudentsPerformance$`test preparation course`[StudentsPerformance$`test preparation course`=="completed"]<-1
# StudentsPerformance$`test preparation course`[StudentsPerformance$`test preparation course`=="none"]<-0
ggplot(StudentsPerformance, aes(x = StudentsPerformance$parental.level.of.education, y =StudentsPerformance$gender , fill = StudentsPerformance$math.score)) +
  geom_col() +scale_x_discrete() +coord_polar("y")
# StudentsPerformance <- transform(StudentsPerformance, gender = as.numeric(gender), 
#                                  `race/ethnicity` = as.numeric(`race/ethnicity`),
#                                  `parental level of education`=as.numeric(`parental level of education`),
#                                  lunch=as.numeric(lunch),
#                                  `test preparation course`=as.numeric(`test preparation course`))
# 
# str(StudentsPerformance)
rquery.cormat(StudentsPerformance, type="full")
library(scatterplot3d)
scatterplot3d(StudentsPerformance[,6:8],pch = 20, highlight.3d=TRUE)
ggplot(StudentsPerformance, aes(x=reading.score, fill=parental.level.of.education)) +
  geom_histogram( color="#69b3a2", alpha=0.6, position = 'identity') +
  theme_ipsum() +
  labs(fill="")
