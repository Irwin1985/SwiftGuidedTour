// Constantes: se definen con 'let' y una vez enlazadas su valor no puede cambiar.
// Variables: se definen con 'var' y su valor puede cambiar por otro del mismo tipo.

var myVariable = 42
print("myVariable: \(myVariable)")
myVariable = 50
print("myVariable: \(myVariable)")
let myConstant = 42
print("myConstant: \(myConstant)")

// Los tipos pueden ser explícitos o implícitos, este último inferido por el compilador.
let implicitInteger = 70 // aquí el compilador sabe que debe usar UInt
let implicitDouble = 70.0 // aquí reconoce que es Double
let explicitDouble: Double = 70 // aquí no se molesta en inferir el tipo porque se lo hemos dado.

// Las conversiones nunca se hacen de forma automática, hay que hacerlas de forma explícita.

let label = "The width is "
let width = 94
let widthLabel = label + String(width) // casteamos manualmente de UInt a String vale?

// Interpolación de strings con \(expression)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

// Triple comillas para literales strings con múltiples líneas
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""

// Array literales

var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcom": "Captain",
    "Kaylee": "Mechanic",
]

occupations["Jayne"] = "Public Relations"

print(occupations) // NOTA: occupations es de hecho un diccionario o array asociativo.

// Agregar elementos a un array
shoppingList.append("blue paint")
print(shoppingList)
