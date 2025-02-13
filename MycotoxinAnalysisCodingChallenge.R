# Karamjit Kaur Baryah & Prativa Chhetri

#### Q2 ####

file.choose()

MycotoxinData=read.csv("/Users/chhet/OneDrive/GIT/MycotoxinData.csv", na.strings = "na")

# loading library

library("ggplot2")
library("readr")


ggplot(MycotoxinData,aes(x=Treatment,y=DON,color=Cultivar))+
  geom_boxplot()+
  xlab("Treatment")+
  ylab("DON")
# Change the y label to “DON(ppm)” and make the x label blank.


ggplot(MycotoxinData,aes(x=Treatment,y=DON,color=Cultivar))+
  geom_boxplot()+
  xlab("")+
  ylab("DON(ppm)")

#### Q3 ####

#Creating Boxplot
ggplot(MycotoxinData,aes(x=Treatment,y=DON,color=Cultivar))+
  geom_point()+
  stat_summary(fun=mean,geom="bar")+
  stat_summary(fun.data=mean_se, geom="errorbar")+
  xlab("Treatment")+
  ylab("DON")

#### Q4 ####

ggplot(MycotoxinData,aes(Treatment,DON))+
  geom_boxplot(aes(fill = Cultivar, colour = "black"))+
  xlab("Treatment")+
  ylab("")+
  geom_point(aes(fill=Cultivar),position = position_jitterdodge(dodge.width = 0.9),shape=21,color="black")


ggplot(MycotoxinData,aes(x=Treatment,y=DON,color=Cultivar))+
  geom_point()+
  stat_summary(fun=mean,geom="bar")+
  stat_summary(fun.data=mean_se, geom="errorbar")+
  xlab("Treatment")+
  ylab("DON")+
  geom_point(aes(fill=Cultivar),position = position_jitterdodge(dodge.width = 0.9),shape=21,color="black")

#### Q5 ####

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442",
                "#0072B2", "#D55E00", "#CC79A7")


ggplot(MycotoxinData,aes(Treatment,DON))+
  geom_boxplot(aes(fill = Cultivar, colour = "black"))+
  scale_fill_manual(values=cbbPalette)
xlab("Treatment")+
  ylab("DON")+
  geom_point(aes(fill=Cultivar),position = position_jitterdodge(dodge.width = 0.9),shape=21,color="black")

#### Q6 ####


ggplot(MycotoxinData,aes(Treatment,DON))+
  geom_boxplot(aes(fill = Cultivar, colour = "black"))+
  xlab("Treatment")+
  ylab("DON")+
  geom_point(aes(fill=Cultivar),position = position_jitterdodge(dodge.width = 0.9),shape=21,color="black")+
  facet_wrap(~Cultivar)
#### Q7 ####

ggplot(MycotoxinData, aes(x = Treatment, y = DON, fill = Cultivar)) +
  geom_bar(stat = "summary", fun = "mean", position = position_dodge(width = 0.75)) + 
  stat_summary(fun.data = mean_se, geom = "errorbar", 
               position = position_dodge(width = 0.75), width = 0.2) +
  geom_point(aes(fill = Cultivar), 
             position = position_jitterdodge(dodge.width = 0.9), 
             shape = 21, color = "black", alpha = 0.5) +  # Set transparency
  xlab("Treatment") +
  ylab("DON") +
  facet_wrap(~Cultivar)

#### Q8 ####

# Creating Dot Plot
ggplot(MycotoxinData, aes(x = Treatment, y = DON, fill = Cultivar)) +
  geom_boxplot(outlier.shape = NA, alpha = 0.5) +  # Boxplot for summary
  geom_dotplot(binaxis = "y", stackdir = "center", 
               position = position_dodge(0.75), dotsize = 0.5, 
               shape = 21, color = "black", alpha = 0.7) +  # Dot plot to show distribution
  xlab("Treatment") +
  ylab("DON")