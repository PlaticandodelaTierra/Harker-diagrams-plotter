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
Di=readline('Please type SiO2-Major')
if(Di=='SiO2-Major'){
  A=readline('Did you want both diagrams together? Yes=(Y),No=(N)')
  if (substr(A,1,1)=='Y'){
    x11()
    D=read.csv('Template_BivariateDiagram.csv')
    Ti=ggplot(st1, aes(x=SiO2, y=TiO2, fill= TAS, shape=TAS)) + 
      geom_point(size =3, show.legend = F) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10), legend.position = "top", legend.title = element_blank(), panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(TiO[2])) +
      scale_x_continuous(breaks = seq(30,90,5))
    
    Al=ggplot(st1, aes(x=SiO2, y=Al2O3, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Al[2]*O[3])) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    
    Fe=ggplot(st1, aes(x=SiO2, y=Fe2O3, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Fe[2]*O[3]))+
      scale_x_continuous(breaks = seq(30,90,5))
    
    Mn=ggplot(st1, aes(x=SiO2, y=MnO, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(MnO))+
      scale_x_continuous(breaks = seq(30,90,5))  
    
    Mg=ggplot(st1, aes(x=SiO2, y=MgO, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(MgO)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    
    Ca=ggplot(st1, aes(x=SiO2, y=CaO, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(CaO)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    
    Na=ggplot(st1, aes(x=SiO2, y=Na2O, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Na[2]*O)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    
    K=ggplot(st1, aes(x=SiO2, y=K2O, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(K[2]*O)) +
      scale_x_continuous(breaks = seq(30,90,5)) 
    
    P=ggplot(st1, aes(x=SiO2, y=P2O5, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) +   
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(P[2]*O[5]))+
      scale_x_continuous(breaks = seq(30,90,5))
 grid.arrange(Ti,Al,Fe,Mn,Mg,Ca,Na,K,P, ncol=3)
  }else if (A=='N'){
    D=read.csv('Template_BivariateDiagram.csv')
     Ti=ggplot(st1, aes(x=SiO2, y=TiO2, fill= TAS, shape=TAS)) + 
      geom_point(size =3, show.legend = F) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10), legend.position = "top", legend.title = element_blank(), panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(TiO[2])) +
      scale_x_continuous(breaks = seq(30,90,2))
    print(Ti)
    Al=ggplot(st1, aes(x=SiO2, y=Al2O3, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Al[2]*O[3])) +
      scale_x_continuous(breaks = seq(30,90,2)) 
    print(Al)
    Fe=ggplot(st1, aes(x=SiO2, y=Fe2O3, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Fe[2]*O[3]))+
      scale_x_continuous(breaks = seq(30,90,2))
    print(Fe)
    Mn=ggplot(st1, aes(x=SiO2, y=MnO, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(MnO))+
      scale_x_continuous(breaks = seq(30,90,2))  
    print(Mn)
    Mg=ggplot(st1, aes(x=SiO2, y=MgO, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(MgO)) +
      scale_x_continuous(breaks = seq(30,90,2)) 
    print(Mg)
    Ca=ggplot(st1, aes(x=SiO2, y=CaO, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(CaO)) +
      scale_x_continuous(breaks = seq(30,90,2)) 
    print(Ca)
    Na=ggplot(st1, aes(x=SiO2, y=Na2O, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(Na[2]*O)) +
      scale_x_continuous(breaks = seq(30,90,2)) 
    print(Na)
    K=ggplot(st1, aes(x=SiO2, y=K2O, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) + 
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(K[2]*O)) +
      scale_x_continuous(breaks = seq(30,90,2)) 
    print(K)
    P=ggplot(st1, aes(x=SiO2, y=P2O5, fill= TAS, shape=TAS)) + 
      geom_point(show.legend=F,size =3) +   
      scale_shape_manual(values=c(21,21,21,21,21))+
      scale_fill_manual(values =c("red","darkgreen","blue"))+
      theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
      xlab(bquote(SiO[2])) + ylab(bquote(P[2]*O[5]))+
      scale_x_continuous(breaks = seq(30,90,2))
    print(P)
  }
  #### MgO vs Major ####
  B=readline('Did you want to generate MgO vs Major diagrams? (plots are coming together) Yes=(Y),No=(N)')
  if (substr(B,1,1)=='Y'){
    x11()
    D=read.csv('Template_BivariateDiagram.csv')
  TiM=ggplot(st1, aes(x=MgO, y=TiO2, fill= TAS, shape=TAS)) + 
    geom_point(size =3, show.legend = F) + 
    scale_shape_manual(values=c(21,21,21,21,21))+
    scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
    theme(axis.title = element_text(size=10), legend.position = "top", legend.title = element_blank(), panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
    xlab(bquote(MgO)) + ylab(bquote(TiO[2])) 
  
  AlM=ggplot(st1, aes(x=MgO, y=Al2O3, fill= TAS, shape=TAS)) + 
    geom_point(show.legend=F,size =3) + 
    scale_shape_manual(values=c(21,21,21,21,21))+
    scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
    theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
    xlab(bquote(MgO)) + ylab(bquote(Al[2]*O[3])) 
  
  FeM=ggplot(st1, aes(x=MgO, y=Fe2O3, fill= TAS, shape=TAS)) + 
    geom_point(show.legend=F,size =3) + 
    scale_shape_manual(values=c(21,21,21,21,21))+
    scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
    theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
    xlab(bquote(MgO)) + ylab(bquote(Fe[2]*O[3]))
  
  MnM=ggplot(st1, aes(x=MgO, y=MnO, fill= TAS, shape=TAS)) + 
    geom_point(show.legend=F,size =3) + 
    scale_shape_manual(values=c(21,21,21,21,21))+
    scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
    theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
    xlab(bquote(MgO)) + ylab(bquote(MnO)) 
  
  SiM=ggplot(st1, aes(x=MgO, y=SiO2, fill= TAS, shape=TAS)) + 
    geom_point(show.legend=F,size =3) + 
    scale_shape_manual(values=c(21,21,21,21,21))+
    scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
    theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
    xlab(bquote(MgO)) + ylab(bquote(MgO)) 
  
  CaM=ggplot(st1, aes(x=MgO, y=CaO, fill= TAS, shape=TAS)) + 
    geom_point(show.legend=F,size =3) + 
    scale_shape_manual(values=c(21,21,21,21,21))+
    scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
    theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
    xlab(bquote(MgO)) + ylab(bquote(CaO)) 
  
  NaM=ggplot(st1, aes(x=MgO, y=Na2O, fill= TAS, shape=TAS)) + 
    geom_point(show.legend=F,size =3) + 
    scale_shape_manual(values=c(21,21,21,21,21))+
    scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
    theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
    xlab(bquote(MgO)) + ylab(bquote(Na[2]*O)) 
  
  KM=ggplot(st1, aes(x=MgO, y=K2O, fill= TAS, shape=TAS)) + 
    geom_point(show.legend=F,size =3) + 
    scale_shape_manual(values=c(21,21,21,21,21))+
    scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
    theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
    xlab(bquote(MgO)) + ylab(bquote(K[2]*O)) 
  
  PM=ggplot(st1, aes(x=MgO, y=P2O5, fill= TAS, shape=TAS)) + 
    geom_point(show.legend=F,size =3) +   
    scale_shape_manual(values=c(21,21,21,21,21))+
    scale_fill_manual(values =c("blue","green","red","yellow","cyan"))+
    theme(axis.title = element_text(size=10),panel.grid =element_blank(),panel.background = element_blank(),panel.border = element_rect(fill = NA, color = "black")) +
    xlab(bquote(MgO)) + ylab(bquote(P[2]*O[5]))
  grid.arrange(SiM,TiM,AlM,FeM,MnM,CaM,NaM,KM,PM, ncol=3)
  }else if (B=='N'){
    b=print('Thanks, I invite you to generate more diagrams at www.platicandodelatierra.com ')
  }
}