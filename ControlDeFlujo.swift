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

