#### Install packages ####
#install.packages("ggplot2")
#install.packages("patchwork")
#install.packages("ggtern")
#### Library ####
library(ggplot2)
library(patchwork)
library(ggtern)
### Some considerations ####
rm(list=ls())  
graphics.off() 
##### Some coments ####
"Change the scale_fill_manual and scale_shape manual values in base of the groups that you have"
"you can add it here and then copy in all the diagrams... c(21,21,21,21,21);c(blue,green,red,yellow,cyan)" 
"...add comas when you use text in the c()"
"If you change the template name please change it in st1"
###### Data #######
st1=read.csv("Template_BivariateDiagram.csv")
### Sio2 vs Major ####
readline('Welcome ! lets generate some diagrams (please push enter to continue)')
Di=readline('Please type SiO2-Trace')
if(Di=='SiO2-Trace'){
  A=readline('Did you want both diagrams together? Yes=(Y),No=(N)')
  if (substr(A,1,1)=='Y'){
    x11()
    #### SiO2 vs Trace ####
    Ba=ggplot(st1, aes(x=SiO2, y=Ba, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Ba)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    
    Rb=ggplot(st1, aes(x=SiO2, y=Rb, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Rb))+
      scale_x_continuous(breaks = seq(30,90,5)) 
    
    Sr=ggplot(st1, aes(x=SiO2, y=Sr, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3)+
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Sr)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    
    Nb=ggplot(st1, aes(x=SiO2, y=Nb, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3)+ 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Nb)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    
    Zr=ggplot(st1, aes(x=SiO2, y=Zr, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),legend.position = "bottom", legend.title = element_blank(), panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Zr)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    
    Y=ggplot(st1, aes(x=SiO2, y=Y, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3)+ 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),legend.position = "top", legend.title = element_blank(), panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Y)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    
    La=ggplot(st1, aes(x=SiO2, y=La, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(La)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    
    Eu=ggplot(st1, aes(x=SiO2, y=Eu, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3)+ 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Eu)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    
    Yb=ggplot(st1, aes(x=SiO2, y=Yb, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3)+ 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Yb)) +
      scale_x_continuous(breaks = seq(30,90,5))+
      ylim(0,15)
    grid.arrange(Ba,Rb,Sr,Nb,Zr,Y,La,Eu,Yb, ncol=3)
  }else if (A=='N'){
    Ba=ggplot(st1, aes(x=SiO2, y=Ba, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Ba)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    print(Ba)
    Rb=ggplot(st1, aes(x=SiO2, y=Rb, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Rb))+
      scale_x_continuous(breaks = seq(30,90,5)) 
    print(Rb)
    Sr=ggplot(st1, aes(x=SiO2, y=Sr, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3)+
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Sr)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    print(Sr)
    Nb=ggplot(st1, aes(x=SiO2, y=Nb, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3)+ 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Nb)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    print(Nb)
    Zr=ggplot(st1, aes(x=SiO2, y=Zr, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),legend.position = "bottom", legend.title = element_blank(), panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Zr)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    print(Zr)
    Y=ggplot(st1, aes(x=SiO2, y=Y, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3)+ 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),legend.position = "top", legend.title = element_blank(), panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Y)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    print(Y)
    La=ggplot(st1, aes(x=SiO2, y=La, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(La)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    print(La)
    Eu=ggplot(st1, aes(x=SiO2, y=Eu, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3)+ 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Eu)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    print(Eu)
    Yb=ggplot(st1, aes(x=SiO2, y=Yb, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3)+ 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Yb)) +
      scale_x_continuous(breaks = seq(30,90,5))+
      ylim(0,15)
    print(Yb)
  }
}
#### MgO vs Trace ####
B=readline('Did you want to generate MgO vs trace diagrams? (plots are coming together) Yes=(Y),No=(N)')
if (substr(B,1,1)=='Y'){
  x11()
BaM=ggplot(st1, aes(x=MgO, y=Ba, fill= TAS, shape=TAS)) + 
  geom_point(show.legend=F,size =3) + 
  scale_shape_manual(values=c(21,21,21,21,21))+
  scale_fill_manual(values =c("red","darkgreen","blue"))+
  theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
  xlab(bquote(MgO)) + ylab(bquote(Ba))

RbM=ggplot(st1, aes(x=MgO, y=Rb, fill= TAS, shape=TAS)) + 
  geom_point(show.legend=F,size =3) + 
  scale_shape_manual(values=c(21,21,21,21,21))+
  scale_fill_manual(values =c("red","darkgreen","blue"))+
  theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
  xlab(bquote(MgO)) + ylab(bquote(Rb)) 

SrM=ggplot(st1, aes(x=MgO, y=Sr, fill= TAS, shape=TAS)) + 
  geom_point(show.legend=F,size =3)+
  scale_shape_manual(values=c(21,21,21,21,21))+
  scale_fill_manual(values =c("red","darkgreen","blue"))+
  theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
  xlab(bquote(MgO)) + ylab(bquote(Sr)) 

NbM=ggplot(st1, aes(x=MgO, y=Nb, fill= TAS, shape=TAS)) + 
  geom_point(show.legend=F,size =3)+ 
  scale_shape_manual(values=c(21,21,21,21,21))+
  scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
  theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
  xlab(bquote(MgO)) + ylab(bquote(Nb)) 

ZrM=ggplot(st1, aes(x=MgO, y=Zr, fill= TAS, shape=TAS)) + 
  geom_point(show.legend=F,size =3) + 
  scale_shape_manual(values=c(21,21,21,21,21))+
  scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
  theme(axis.title = element_text(size=10),legend.position = "bottom", legend.title = element_blank(), panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
  xlab(bquote(MgO)) + ylab(bquote(Zr)) 

YM=ggplot(st1, aes(x=MgO, y=Y, fill= TAS, shape=TAS)) + 
  geom_point(show.legend=F,size =3)+ 
  scale_shape_manual(values=c(21,21,21,21,21))+
  scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
  theme(axis.title = element_text(size=10),legend.position = "top", legend.title = element_blank(), panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
  xlab(bquote(MgO)) + ylab(bquote(Y)) 

LaM=ggplot(st1, aes(x=MgO, y=La, fill= TAS, shape=TAS)) + 
  geom_point(show.legend=F,size =3) + 
  scale_shape_manual(values=c(21,21,21,21,21))+
  scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
  theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
  xlab(bquote(MgO)) + ylab(bquote(La)) 

EuM=ggplot(st1, aes(x=MgO, y=Eu, fill= TAS, shape=TAS)) + 
  geom_point(show.legend=F,size =3)+ 
  scale_shape_manual(values=c(21,21,21,21,21))+
  scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
  theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
  xlab(bquote(MgO)) + ylab(bquote(Eu)) 

YbM=ggplot(st1, aes(x=MgO, y=Yb, fill= TAS, shape=TAS)) + 
  geom_point(show.legend=F,size =3)+ 
  scale_shape_manual(values=c(21,21,21,21,21))+
  scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
  theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
  xlab(bquote(MgO)) + ylab(bquote(Yb))  
grid.arrange(BaM,RbM,SrM,NbM,ZrM,YM,LaM,EuM,YM, ncol=3)
}else if (B=='N'){
  b=print('Thanks, I invite you to generate more diagrams at www.platicandodelatierra.com ')
}
