const getCopy = (obj) => JSON.parse(JSON.stringify(obj))

module.exports = class School {
  constructor() {
    this.students = {}
  }

  roster() {
    return getCopy(this.students)
  }

  add(name, grade) {
    this.students[grade] ? this.students[grade].push(name) : this.students[grade] = [name]
    this.students[grade].sort()
  }

  grade(grade) {
    return getCopy(this.students)[grade] || []
  }

}
