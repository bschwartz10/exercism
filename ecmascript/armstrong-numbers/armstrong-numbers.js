const validate = (input) => {
  const stringInput = input.toString()
  const length = stringInput.length
  const result = stringInput.split('').reduce((total, digit) => total += digit ** length, 0)
  return input === result
}

module.exports = {validate}
