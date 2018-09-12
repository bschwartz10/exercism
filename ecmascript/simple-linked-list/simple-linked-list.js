const ElementValueRequiredException = () => {
  throw new Error('Missing parameter');
}

const ElementNextNotInstanceException = (next) => {
  if (next === undefined) {
    return undefined
  }
  else if (next instanceof(Element)) {
    return next
  }
  else {
    throw new Error('Invalid Next Instance');
  }
}

export class Element{
  constructor(value = ElementValueRequiredException(), next=undefined){
    this.value = value
    this.next = ElementNextNotInstanceException(next)
  }
}

export class List{
  constructor(){
    this.head = undefined
  }

  push(element){
    if (this.head === undefined) {
      this.head = element
    }
    else {
      let currentNode = this.head
      while (currentNode.next != undefined) {
        currentNode = currentNode.next
      }
      currentNode.next = element
    }
  }

  unshift(element){
    if (this.head === undefined) {
      this.head = element
    }
    else {
      let currentHead = this.head
      this.head = element
      this.head.next = currentHead
    }
  }

  shift(){
    if (this.head.next !== undefined) {
      const newHead = this.head.next
      this.head = newHead
    }
    else {
      this.head = undefined
    }
  }

  pop(){
    if (this.head.next !== undefined) {
      let currentNode = this.head
      while (currentNode.next.next !== undefined) {
        currentNode = currentNode.next
      }
      let secondToLastNode = currentNode
      secondToLastNode.next = undefined
    }
    else {
      this.head = undefined
    }
  }

  static fromArray(array){
      const list = new List();
      array.forEach(value => list.push(new Element(value)))
      return list;
  }

  toArray(){
    let array = []
    let currentNode = this.head
    while (currentNode.next !== undefined) {
      array.push(currentNode.value)
      currentNode = currentNode.next
    }
    array.push(currentNode.value)
    return array
  }

  reverse(){
    if (!this.head) {
      return;
    }

    let curr;
    let prev;

    while (this.head) {
      curr = this.head;
      this.shift();
      curr.next = prev;
      prev = curr;
    }
    this.head = prev;
  }
}
