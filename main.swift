var tableau = ["bateau", "voiture", "vélo", "avion", "bus", "train", "moto"]

// 2- Affichez les mots se trouvant aux indices 2, 3 et 20
let indices = [2, 3, 20]
for index in indices {
    if index < tableau.count {
        print("Moyen de transport numéro \(index) est \(tableau[index])")
    } else {
        print("L'indice \(index) est en dehors des limites du tableau.")
    }
}

// 3- Affichez tous les mots de la liste sous la forme Moyen de transport numéro [i] est [mot]
for (index, transport) in tableau.enumerated() {
    print("Moyen de transport numéro \(index) est \(transport)")
}

// 4- Trouvez et affichez les mots aux indices impairs puis pairs
print("Mots aux indices impairs:")
for (index, transport) in tableau.enumerated() {
    if index % 2 != 0 {
        print(transport)
    }
}

print("Mots aux indices pairs:")
for (index, transport) in tableau.enumerated() {
    if index % 2 == 0 {
        print(transport)
    }
}

// 5- Inversez l’ordre du tableau puis stockez le résultat dans un nouveau tableau
let reversedTableau = tableau.reversed()
print("Tableau inversé: \(reversedTableau)")

// 6- Insérez les mots suivants ‘camion’, ‘taxi’
// En tête de liste
tableau.insert("camion", at: 0)
// En fin de liste
tableau.append("taxi")
// À partir de l’indice 2
tableau.insert(contentsOf: ["camion", "taxi"], at: 2)

// Affichage du tableau après les insertions
print("Tableau après insertion de 'camion' et 'taxi': \(tableau)")

// PARTIE 2

// Création d'une liste de dictionnaires contenant les informations des personnes
var personnes: [[String: Any]] = [
    ["nom": "Pierre", "sexe": "M", "annee_naissance": 2010],
    ["nom": "Michelle", "sexe": "F", "annee_naissance": 2008],
    ["nom": "Estelle", "sexe": "F", "annee_naissance": 2005],
    ["nom": "Quentin", "sexe": "M", "annee_naissance": 2010],
    ["nom": "Francois", "sexe": "M", "annee_naissance": 1980],
    ["nom": "Cristelle", "sexe": "F", "annee_naissance": 1995]
]

// Affichage du nom de toutes les personnes avec leur année de naissance
for personne in personnes {
    let nom = personne["nom"] as! String
    let anneeNaissance = personne["annee_naissance"] as! Int
    let sexe = personne["sexe"] as! String
    let genre = sexe == "M" ? "est né" : "est née"
    print("\(nom) \(genre) en \(anneeNaissance)")
}

// Affichage des noms de toutes les personnes majeures
print("\nPersonnes majeures :")
let anneeCourante = 2024
for personne in personnes {
    let anneeNaissance = personne["annee_naissance"] as! Int
    if anneeCourante - anneeNaissance >= 18 {
        print(personne["nom"]!)
    }
}

// Affichage des filles puis des garçons
print("\nFilles :")
for personne in personnes {
    let sexe = personne["sexe"] as! String
    if sexe == "F" {
        print(personne["nom"]!)
    }
}

print("\nGarçons :")
for personne in personnes {
    let sexe = personne["sexe"] as! String
    if sexe == "M" {
        print(personne["nom"]!)
    }
}

// Ajout d'une nouvelle personne dans la liste
let nouvellePersonne: [String: Any] = ["nom": "Juliette", "sexe": "F", "annee_naissance": 2000]
personnes.append(nouvellePersonne)

// Affichage de la liste mise à jour
print("\nListe des personnes mise à jour :")
print(personnes)
