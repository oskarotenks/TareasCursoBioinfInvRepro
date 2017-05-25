# Tutorial para cargar, correr y editar archivos .tre o .nex y llevar a cabo
# la construccion de arboles filogeneticos

# Cargamos los paquetes a utilizar
library(ape)
library(phytools)
 
# Cargamos nuestro árbol filogenético, en este caso desde un enlace en internet
Psitasidos = read.nexus("http://marceloarayasalas.weebly.com/uploads/2/5/5/2/25524573/psitacidos.tre")

# Revisamos si nuestro arbol es ultramétrico
is.ultrametric(Psitasidos)

# Revisamos si nuestro arbol es binario (sin politomias)?
is.binary.tree(Psitasidos)

# Revisamos si nuestro arbol se encuentre enraizado
is.rooted(Psitasidos)

# Revisamos visualmente la filogenia y asignamos el numero de nodos
par(mar = rep(1, 4))
plot(Psitasidos, cex = 0.5)
nodelabels(cex = 0.5)

# El estudio de los nodos es de relevancia si estamos interesados en algun clado en especial
# En este caso nos enfocaremos en el nodo 197 conformado por la tribu Arini
Arini<-extract.clade(Psitasidos,node = 197)
plot(Arini, cex = 0.6)
  
# Revisamos que los nombres de las especies se encuentren actualizados al nuevo clado
print(Arini$tip.label)

# Modificamos los nombres de algunas especies
Arini$tip.label<-gsub("Pionites_melanocephala","Pionites_melanocephalus",Arini$tip.label)
Arini$tip.label<-gsub("Rhynchopsitta_terresi","Rhynchopsitta_terrisi",Arini$tip.label)
Arini$tip.label<-gsub("Ara_ambigua","Ara_ambiguus",Arini$tip.label)
Arini$tip.label<-gsub("Ara_severa","Ara_severus",Arini$tip.label)

# Removemos especies de las cuales no se cuenta con datos y ploteamos el arbol
# con un tamaño de letra adecuado
Arini51sp<-drop.tip(Arini,c("Ara_rubrogenys",
      "Cyanopsitta_spixii", "Aratinga_brevipes", "Pyrrhura_orcesi"))
plot(Arini51sp, cex=0.9)
  
# Editamos el árbol para asignar un color distinto a cada género y cambiamos 
# el grosor de las lineas
plot.phylo(Arini51sp, adj = 0, use.edge.length = FALSE, font = 4, cex = 0.6,
    tip.color = c(rep(1, 2), rep(2, 4), rep(3, 10), rep(4, 5), rep("#006600", 7),
    rep("#00CCCC", 12), rep("#99004C", 5), rep("#606060", 4), rep(1, 2)), edge.width=3)

# Guardamos el árol una vez que hemos terminado
write.tree(Arini51sp,"Arini51sp.tre")
