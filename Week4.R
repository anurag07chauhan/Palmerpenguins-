install.packages("ggplot2")
install.packages("palmerpenguins")
data("penguins")
View(penguins)

ggplot(data=penguins)+ geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#ggplot(data=penguins) will give empty plot
# (+) You use plus sign to add layers to plot
#geom_point() tells R to use points to represent our data and create a scatter plot
#The way a variable looks is called its aesthetics
#mapping variables to axis

ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm))

#R is case sensitive


#Enhancing visualizations in R
ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#The plot shows positive relationship between the two variables
#But it also got some limitations:
#       We cannot tell which data points refers to each of the three penguin species

ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))

ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species))

ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species,color=species))

ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species,color=species,size=species))

ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,alpha=species))


ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g),color="red")


#Aesthetics for points 
#x,y,color,shape,size,alpha


##Doing more with ggplot
#Geom(R)-The geometrical object used to represent your data
#geom_point,geom_bar,geom_line

ggplot(data=penguins)+ 
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))


ggplot(data=penguins)+ 
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

ggplot(data=penguins)+ 
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g,linetype=species))

#geom_jitter

ggplot(data=penguins)+ 
  geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g))



#facet_function

#fig 1: facet_wrap()
ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_wrap(~species)

#fig2: facet_grid() facet with more than 1 variables
ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(sex~species)

ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(~species)

ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(~sex)

##Annotation 
ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",subtitle= "Sample of Three Penguin Species",caption="Data collected by Dr. Kristen Gorman")
   
#annotate() is used to add labels on the plot itself
ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",subtitle= "Sample of Three Penguin Species",caption="Data collected by Dr. Kristen Gorman")+
  annotate("text",x=220,y=3500,label="The Gentoos are the largest",color="Purple")

ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",subtitle= "Sample of Three Penguin Species",caption="Data collected by Dr. Kristen Gorman")+
  annotate("text",x=220,y=3500,label="The Gentoos are the largest",color="purple",fontface="bold",size=4.5)

#tilting the text to some angle
ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",subtitle= "Sample of Three Penguin Species",caption="Data collected by Dr. Kristen Gorman")+
  annotate("text",x=220,y=3500,label="The Gentoos are the largest",color="purple",fontface="bold",size=4.5,angle=25)


#Storing a plot as variable

p<-ggplot(data=penguins)+ 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",subtitle= "Sample of Three Penguin Species",caption="Data collected by Dr. Kristen Gorman")

#adding annotation to previous saved plot as a variable
p+annotate("text",x=220,y=3500,label="The Gentoos are the largest",color="purple",fontface="bold",size=4.5)



#R Markdown
install.packages("rmarkdown")
