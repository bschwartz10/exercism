/* eslint-disable no-unused-vars */
//
// This is only a SKELETON file for the 'Bob' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

class Bob{
  hey(message) {
    if (this.isShouting(message) && this.isQuestion(message)) {
      return 'Calm down, I know what I\'m doing!'
    }
    if (this.isShouting(message)) {
      return 'Whoa, chill out!'
    }
    else if (this.isQuestion(message)) {
      return 'Sure.'
    }
    else if (message.length === 0 || !message.trim()) {
      return 'Fine. Be that way!'
    }
    else {
      return 'Whatever.'
    }
  }

  isShouting(message) {
    return message === message.toUpperCase() && this.containsLetters(message)
  }

  isQuestion(message) {
    return message.endsWith('?')
  }

  containsLetters(message) {
    return message.match(/[a-z]/i)
  }
}

export default Bob
