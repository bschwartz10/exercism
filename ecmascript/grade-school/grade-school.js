class School {

  constructor(){
    this.students = {}
  }

  roster() {
    return this.students
  }

  add(name, grade) {
    if (this.roster().hasOwnProperty(grade)) {
      this.roster()[grade].push(name)
    }
    else {
      return this.roster()[grade] = [name]
    }
    this.roster()[grade].sort()
  }

  grade(grade) {
    if (this.roster().hasOwnProperty(grade)) {
      return this.roster()[grade]
    }
    else {
      return []
    }
  }
}

export default School
