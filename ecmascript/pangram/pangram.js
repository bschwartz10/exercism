module.exports = class Pangram {
  constructor(sentence) {
    this.sentence = sentence.toLowerCase()
    this.alphabet = [
                      'a','b','c','d','e','f','g','h','i',
                      'j','k','l','m','n','o','p','q','r',
                      's','t','u','v','w','x','y','z'
                    ]
  }

  isPangram() {
    return this.alphabet.every((letter) => {
      return this.sentence.includes(letter)
    })
  }
}
