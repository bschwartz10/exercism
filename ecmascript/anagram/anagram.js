module.exports = class Anagram {
  constructor(subject) {
    this.subject = subject
  }

  matches(...args) {
    const words = Array.prototype.concat(...args)
    let matches = words.filter(word => {
      return this.isAnagram(word)
    })
    return matches
  }

  isAnagram(word) {
    return this.alphabeticMatch(word) && this.distinctFromInput(word)
  }

  alphabetize(word) {
    return word.toLowerCase().split('').sort().join('')
  }

  alphabeticMatch(word) {
    return this.alphabetize(this.subject) === this.alphabetize(word)
  }

  distinctFromInput(word) {
    return this.subject.toLowerCase() !== word.toLowerCase()
  }

}
