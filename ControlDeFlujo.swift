// Control de Flujo
// NOTA: Los paréntesis en los condicionales e iteradores son opcionales

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

// El condicional es una expresión cuyo resultado siempre debe ser Bool.
// Mezclando if con let para valores opcionales (Optional)

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Applessed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

print(greeting)

// No te pierdas, dentro del if he usado let name = optionalName que se traduce:
// oye?, si name es igual a optionalName entonces quiere decir que optionalName no es null
// y se ejecuta el bloque del if. De lo contrario se ejecutaría el bloque else si lo hubiere
// ya que optionalName es nil. Claro no?

// Otra forma de condicionar el Optional
let nickName: String? = nil
let fullName: String = "John Applessed"
let informalGreeting = "Hi \(nickName ?? fullName)"

// Lo anterior dice: muestra el contenido de nickName o de lo contrario usa fullName

// Algo más corto sería:

if let nickName = nickName {
    print("Hey, \(nickName)")
}

// switch
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it spacy \(x)?")
    default:
        print("Everything tastes good in soup.")
}

// NOTA: no hace falta romper cada branch con 'break'

// FOR LOOP

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

print(largest)

// (_, numbers): el '_' descarta la variable, en este caso las keys del diccionario.

// WHILE LOOP
var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

var total = 0
for i in 0..<4 { // 0..<4 quiere decir de 0 hasta 4 excluído o lo mismo que 3. [0, 1, 2, 3]
    total += 1
}
print(total)

// NOTA: usamos NUMBER..<NUMBER para omitir excluir NUMBER y NUMBER...NUMBER para incluirlo.