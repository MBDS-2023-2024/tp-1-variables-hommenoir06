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
