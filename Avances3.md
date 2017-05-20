## Proyecto Final Bioinformática 2017-2

### Avances 3

Este es el tercer avance mi proyecto final para el curso de _Introducción a la bioinformática e investigación reproducible para análisis genéticos_, el cual se basa en datos publicados por [Mitchell et al, 2016](http://www.amjbot.org/content/104/1/102.full.pdf), con su repositorio en [Dryad Digital Repository](http://datadryad.org/resource/doi:10.5061/dryad.vj32s).

A continuación enlisto las carpetas y archivos que he descargado desde el contenedor de [Dryad Digital Repository](http://datadryad.org/resource/doi:10.5061/dryad.vj32s) junto con los archivos que se contienen dentro de cada carpeta:

· Una carpeta con el paquete de "Complete-Sequence-Files.zip" 
>Contiene disversos archivos .phy para los 498 loci y 326 secuencias (dos alelos por individuo).

>Concatenated.phy contiene secuencias para los 498 loci juntos.

>Species-consensus.phy contiene una secuencia concatenada a nivel específico.

· Una carpeta con el paquete de "OnePer-Sequence-Files.zip"
>Contiene diversos archivos .phylip para los 498 loci y 65 taxones (una secuencia por taxon).

>T74-Concat-OnePer.phy contiene secuencias para los 498 loci juntos.

· Una carpeta con el paquete de "Consensus-Sequence-Files.zip"

>Contiene diversos archivos .phy para los 498 loci y 65 taxones basados ​​en el consenso a nivel específico.

>Consensus.phy contiene secuencias para los 498 loci juntos.

· Una carpeta con el paquete de "Reduced-Sequence-Files.zip"
>Contiene archivos .phy para un subconjunto de 354 loci y 60 taxa.

· Una carpera con el paquete de "Tree-Files.zip"
>Astral-Bootstrap.tre (100 réplicas de bootstrap del análisis COMPLETO de especies en ASTRAL-II).
 
>Gene-Trees-Full.tre (498 árboles "mejores" en  RAxML (en orden ascendente)).
 
>Gene-Trees-Reduced.tre (354 árboles "mejores" en RAxML (en orden ascendente)).
 
>Individual-Trees.tre (Árboles basados ​​en 326 secuencias para corroborar la monofilia)
 
>RAxML-Bootstrap.tre (Réplicas de bootstrap para análisis específico en RAxML.
 
>Species-Trees-Complete.tre (Árboles basados en ASTRAL-II y SVDquartets para los 65 taxones y 498 loci (conjunto de datos COMPLETE).
 
>Species-Trees-Consensus.tre (Árboles generados utilizando el conjunto de datos CONSENSUS).
 
>Species-Trees-OnePer.tre (Árboles generados utilizando el conjunto de datos ONEPER).
 
>Species-Trees-Reduced.tre (Árboles generados utilizando el conjunto de datos REDUCED).
 
>Species-Trees-Schnitzler.tre (Árboles generado utilizando datos de Schnitzler et al., conjunto de datos AUGMENTED).
 
>SVD-bootstrap.tre (100 réplicas de bootstrap del análisis de especies en SVDquartets).

· Archivos adicionales
>Distances.cvs (Contiene las distancias por parejas entre árboles de especies y árboles de genes).

>Internode-Certainty.cvs (Para los 4 conjuntos de árboles, contiene los valores de confianza de los internodos con valores en RAxML, junto con las longitudes de las ramas).

>Locus-Info.cvs (Contiene información sobre los loci, como la longitud, parsimonia entre sitios informativos y las distancias en los árboles)

------------------
· Un archivo "README.txt"
------------------
>Con la descripción de los archivos contenidos en el repositorio.




##### Bibliografía para _Anchored Hybrid Enrichment_ (AHE):

>·Lemmon, A.R., S. Emme, and E.M. Lemmon. 2012. Anchored hybrid enrichment for massively high-throughput phylogenomics. Systematic Biology 61: 727–744.

>·Buddenhagen, C.E., A.R. Lemmon, E.M. Lemmon, J. Bruhl, J. Cappa, W.L. Clement, M. Donoghue, E. Edwards, A. Hipp, M. Kortyna, N. Mitchell, A. Moore, C. Prychid, M. Segovia-Salcedo, M. Simmons, P. Soltis and S. Wanke. 2016. Anchored phylogenomics of angiosperms I: assessing the robustness of phylogenetic estimates. bioRxiv 086298: 10.1101/086298.

>·Mitchell, N., P.O. Lewis, E.M. Lemmon, A.R. Lemmon, and K.E. Holsinger. 2017. Anchored phylogenomics improves the resolution of evolutionary relationships in the rapid radiation of Protea L.. American Journal of Botany 104(1): 102-115.
