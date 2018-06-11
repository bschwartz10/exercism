class Robot {
  constructor() {
    this.name = this.generateName()
    this.usedNames = new Set()
  }

  generateName() {
    var text = "";
    var possibleLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    var possibleNumbers = "0123456789"

    for (var i = 0; i < 2; i++)
      text += possibleLetters.charAt(Math.floor(Math.random() * possibleLetters.length));

    for (var i = 0; i < 3; i++)
      text += possibleNumbers.charAt(Math.floor(Math.random() * possibleNumbers.length));

    return text;
  }

  reset() {
    this.usedNames.add(this.name)
    let newName = this.generateName()
    if (this.usedNames.has(newName)) {
      this.reset()
    }
    else {
      return this.name = newName
    }
  }

}
module.exports = Robot
