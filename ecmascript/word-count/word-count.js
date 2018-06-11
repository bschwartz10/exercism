export default class Words {
  count(phrase) {
    let result = phrase
    .toLowerCase()
    .trim()
    .split(/\s+/)
    .reduce((occurrences, word) => {
      occurrences.hasOwnProperty(word) ? occurrences[word]++ : occurrences[word] =1
      return occurrences
    },{})
    return result
  }
}
