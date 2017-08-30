module.exports = class Transcriptor {
  constructor() {
    this.dnaToMap = {
      C: 'G',
      G: 'C',
      A: 'U',
      T: 'A'
    }
  }

  toRna(dnaStrand) {
    const nucleotides = dnaStrand.split('')
    const dna = nucleotides.map((nucleotide) => {
      if (this.dnaToMap[nucleotide]) {
        return this.dnaToMap[nucleotide]
      } else {
          throw new Error('Invalid input DNA.')
      }
    })
    return dna.join('')
  }

}
