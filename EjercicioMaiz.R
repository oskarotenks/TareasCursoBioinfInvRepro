# Script Ejercicio Unidad 6

# 1. Cargar los datos en una df llamada fullmat
fullmat<- read.delim(file= paste0(getwd(), "/../meta/maizteocintle_SNP50k_meta_extended.txt"))

# 2. ¿Qué tipo de objeto creamos al cargar la base?
class(fullmat)

# 3. ¿Cómo se ven las primeras 6 líneas del archivo?
head(fullmat)

# 4. ¿Cuántas muestras hay?
nrow(fullmat)

# 5. ¿De cuántos estados se tienen muestras?
length(levels(fullmat$Estado))

# 6. ¿Cuántas muestras fueron colectadas antes de 1980?
sum(fullmat$A.o._de_colecta<1980, na.rm=TRUE)

# 7. ¿Cuántas muestras hay de cada raza?
table(fullmat$Raza)

# 8. En promedio ¿a qué altitud fueron colectadas las muestras?
mean(fullmat$Altitud)

# 9. ¿A qué altitud máxima y mínima fueron colectadas?
max(fullmat$Altitud)
min(fullmat$Altitud)

# 10. Crea una nueva df de datos sólo con las muestras de la raza Olotillo
olotillomat<-fullmat[fullmat$Raza=="Olotillo", ]

# 11. Crea una nueva df de datos sólo con las muestras de la raza Reventador, Jala y Ancho
x<-fullmat$Raza %in% c("Reventador", "Jala", "Ancho")
submat<-fullmat[x, ]

# 12. Escribe la matriz anterior a un archivo llamado "submat.csv" en /meta.
write.csv(submat, file= paste0(getwd(), "/../meta/submat.csv"))


