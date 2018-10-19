Exercices de Ruby complétés par Audrey Couture le 10/04/2018


============= Consignes =============

1. Multiples de 3 et 5

Cédric Villani a besoin d'aide pour son prochain prix Nobel de Mathématiques. Il a besoin de résoudre le problème suivant : Si on liste tous les entiers naturels en dessous de 10 qui sont multiples de 3 ou 5, on obtient 3, 5, 6, et 9. La somme de ces nombres est égale à 23.
Trouve la somme des multiples de 3 et 5 inférieurs à 1000.


2. Chiffrer des données

Après ce petit tour de chauffe, tu vas apprendre la cyber-sécurité, avec un algorithme de chiffrement hyper secure (lol) : le chiffrement par décalage. En effet, la NSA a besoin de chiffrer leurs emails et veulent faire appel à toi pour faire un chiffrement par décalage.

En cryptographie, le chiffrement par décalage, aussi connu comme le chiffre de César ou le code de César (voir les différents noms), est une méthode de chiffrement très simple utilisée par Jules César dans ses correspondances secrètes (ce qui explique le nom « chiffre de César »). Le texte chiffré s'obtient en remplaçant chaque lettre du texte clair original par une lettre à distance fixe, toujours du même côté, dans l'ordre de l'alphabet. Pour les dernières lettres (dans le cas d'un décalage à droite), on reprend au début. Par exemple avec un décalage de 3 vers la droite, A est remplacé par D, B devient E, et ainsi jusqu'à W qui devient Z, puis X devient A etc. Il s'agit d'une permutation circulaire de l'alphabet. La longueur du décalage, 3 dans l'exemple évoqué, constitue la clé du chiffrement qu'il suffit de transmettre au destinataire — s'il sait déjà qu'il s'agit d'un chiffrement de César — pour que celui-ci puisse déchiffrer le message. Dans le cas de l'alphabet latin, le chiffre de César n'a que 26 clés possibles (y compris la clé nulle, qui ne modifie pas le texte).

Ta mission : créér une méthode chiffre_de_cesar qui prend en paramètre un string et le nombre de lettre à décaler, et sort le string modifié.

> chiffre_de_cesar("What a string!", 5)
=> "Bmfy f xywnsl!"
Tips :

Tu vas devoir utiliser l'ASCII
n'oublie pas de boucler z à a
nous te conseillons de garder la même casse


3. Stock picker

Après la cyber-sécurité à la NSA, Lehman Brother veut te débaucher pour faire de la finance. Hyper cool. Ils vont te demander de coder un premier programme qui permet, à partir d'une array de prix, de connaitre le meilleur jour d'achat, le meilleur jour de revente pour faire le maximum de bénéfices.
Voici par exemple une array de prix : [17,3,6,9,15,8,6,1,10], la fonction trader_du_dimanche va devoir sortir les index du jour d'achat et du jour de revente qui donneront le plus haut bénéfice. Pour l'array vue ci-haut par exemple, ce sera le deuxième jour (à l'achat) et le cinquième jour (à la revente)

> trader_du_dimanche([17,3,6,9,15,8,6,1,10])
=> [1,4]  # $15 - $3 == $12
LVL UP Lehman Brothers sont très fiers de ton travail. Ils veulent maintenant te faire travailler sur plusieurs entreprises à la fois. Ils vont te filer les stocks sous un format hash chaque jour, et tu devras trouver les meilleurs moments pour acheter et vendre des actions de chaque entreprise. Voici un exemple avec quelques jours :

jour_1 = { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, DIS => 15, :CRM => 6, :JNJ => 10 }
jour_2 = { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, DIS => 9, :CRM => 10, :JNJ => 17 }
jour_3 = { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, DIS => 18, :CRM => 5, :JNJ => 14 }
jour_4 = { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, DIS => 15, :CRM => 18, :JNJ => 3 }
jour_5 = { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, DIS => 3, :CRM => 7, :JNJ => 9 }
jour_6 = { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, DIS => 9, :CRM => 8, :JNJ => 15 }
jour_7 = { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, DIS => 10, :CRM => 9, :JNJ => 17 }
Fais une fonction trader_du_lundi qui prend en entrée une array de hash contenant des prix d'action, et qui sort pour chaque entreprise le meilleur moment pour acheter, et le meilleur moment pour vendre.


4. Compter les mots

Après Lehman Brothers, Google a besoin de toi pour faire de la Data Science. Quelle star ! Écris une fonction intitulée jean_michel_data qui prend en paramètre 2 data types :

le corpus, un string dans lequel tu devras checker le nombre d'occurence de différents strings
le dictionnaire, une array de mots pour qui tu vas compter les occurences dans le corpus
La fonction te sortira le nombre d'occurence des mots du dictionnaire dans le corpus. Ainsi :

> dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
> jean_michel_data("below", dictionary)
=> {"below"=>1, "low"=>1}
> jean_michel_data("Howdy partner, sit down! How's it going?", dictionary)
=> {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
4.bis Compter les mots (bis)
Google veut savoir combien de fois l'on peut trouver dans l'oeuvre intégrale de Shakespeare les mots suivants :

dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
Créé un fichier shakespeare.txt qui reprend le corpus intégral de l'oeuvre de l'écrivain anglais. Ton programme va appeler le fichier shakespeare.txt (indice : c'est plus facile s'ils sont dans le même dossier), pour ensuite compter les occurences du dictionnaire.

Après les mots communs, Google sont curieux, et veulent savoir combien il y a de gros mots dans l'oeuvre de Shakeaspeare, pour voir si l'auteur anglais était un coquin. Voici une liste de gros mots au format .txt. Télécharge ce fichier, mets-le à côté de Shakespeare.txt, et trouve un moyen de transformer cette liste de mot au format txt en une array qui contient les mots convertits en string.