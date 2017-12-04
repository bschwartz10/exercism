module.exports = class Transcriptor {
  constructor() {
    this.dna = {
      'C': 'G',
      'G': 'C',
      'A': 'U',
      'T': 'A'
    }
  }

  toRna(dnaStrand) {
    const nucleotides = dnaStrand.split('')
    const rna = nucleotides.map(nucleotide => {
      return this.conversion(nucleotide)
    })
    return rna.join('')
  }

  conversion(nucleotide) {
    if (this.dna[nucleotide]) {
      return this.dna[nucleotide]
    } else {
        throw new Error('Invalid input DNA.')
    }
  }
}
