def isPrime(n) {
    (2..Math.sqrt(n)).every {n % it != 0}
}
def reverse(n) {
    n.toString().reverse().toInteger()
}

mirp = (2..1000).findAll{ x -> isPrime(x) && x != reverse(x) && isPrime(reverse(x))}

println mirp.size()
