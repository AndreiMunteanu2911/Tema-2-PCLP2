Munteanu Andrei - 315CD - Tema 2

simple.asm
Pornim de la final spre inceputul stringului. In labelul do luam ultima litera si o comparam cu 'Z'.
points_distance.asm
Prima data comparam valorile din campul x ale celor doua structuri primite. Daca sunt egale sarim la label-ul x_egal, unde facem diferenta dintre campurile y si sarim la label-ul end. Altfel, inseamna ca y-urile sunt egale, caz in care sarim la label-ul y_egal, unde analog ca mai inainte, facem diferenta intre campurile x si sarim la label-ul end, in care mutam diferenta rezultata in adresa primita.
road.asm
Apelam intr-un loop functia points_distance.
is_square.asm
EDX il folosim drept contor incepand de la 0 si il inmultim cu el insusi, stocand rezultatul in EAX. Apoi il comparam cu nr original din EBX. Daca EAX e mai mic, incrementam contorul. Daca e egal, inseamna ca e patrat perfect si trecem la urmatorul nr. Daca e mai mare inseamna ca nu e patrat perfect si ne oprim.