const OPERATORS = {
  'plus': function(a, b) { return a + b },
  'minus': function(a, b) { return a - b },
  'multiplied': function(a, b) { return a * b },
  'divided': function(a, b) { return a / b }
}

export class WordProblem{
  constructor(question){
    this.question = this.formatQuestion(question)
  }

  formatQuestion(question){
    return question.slice(0,-1).split(' ')
  }

  filterNumbers(){
    const numbers = this.question
                    .filter((word) => !(isNaN(word)))
                    .map((number) => parseInt(number))
    return numbers
  }

  filterOperators(){
    const mathOperations = ['plus', 'minus', 'multiplied', 'divided']
    const operators = this.question.filter((word) => {
      return mathOperations.includes(word)
    })
    return operators
  }

  answer(){
    const numbers = this.filterNumbers()
    const operators = this.filterOperators()
    const length = operators.length
    const firstResult = OPERATORS[operators['0']](numbers['0'], numbers['1'])
    if (length === 1) {
      return firstResult
    }
    else if (length === 2) {
      return OPERATORS[operators['1']](firstResult, numbers['2'])
    }
  }
}
