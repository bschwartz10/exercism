//
// This is only a SKELETON file for the "Leap" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Year = function(year) {
  this.year = year
};

Year.prototype.isLeap = function() {
  if (year % 4 !== 0) {
    return true
  } else {
    return false
  }
};

module.exports = Year;
var year = new Year(2016)

console.log(year.isLeap());
