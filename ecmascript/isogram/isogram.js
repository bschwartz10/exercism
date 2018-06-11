class Isogram {
  constructor(word) {
    this.word = word.toLowerCase()
  }

  isIsogram() {
    if (Object.keys(this.calculate()).includes('-') || Object.keys(this.calculate()).includes(' ')) {
      const standardizedPairs = {}
      const pairs = this.calculate()
      Object.entries(pairs).forEach(([key, value]) => {
        if (key === '-' || key === ' ') {
          standardizedPairs[key] = 1
        }
        else {
          standardizedPairs[key] = value
        }
        return standardizedPairs
      })
      const numberOfOccurences = Object.values(standardizedPairs)
      return numberOfOccurences.every((number) => number === 1 )
    }
    else {
      const numberOfOccurences = Object.values(this.calculate())
      return numberOfOccurences.every((number) => number === 1 )
    }
  }

  calculate() {
    return this.word.split('').reduce((object, letter) => {
      if (object.hasOwnProperty(letter)) {
        object[letter] += 1
      }
      else {
        object[letter] = 1
      }
      return object
    }, {})
  }
}

module.exports = Isogram
