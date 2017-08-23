module.exports = class Year {
  constructor (year) {
    this.year = year
  }

  isLeap() {
    return (this.year % 400 === 0) || (this.year % 4 === 0 && this.year % 100 !== 0)
  }
}
