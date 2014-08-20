var gameEvent = {
  id: 1, // tapahtuma id
  playerId: 1, // pelaalan id
  worldId: 1, // maailman id
  movement: 1, // pelitapa 1=näppis, 2=kallistus, 3=juoksu+kallistus
  health: 20, // elinvoimaa pelin lopussa, jos nolla niin game over
  levels: [{ // pelatut tasot
    id: 1, // tason id
    decimal: false, // desimaali vai murtoluku taso
    solved: timestamp, // sekuntia tason ratkaisuun
    skip: timestamp, // käytettiinkö ratkaisun näyttöä. sekunnin jälkeen
    trap: timestamp, // laukesiko ansa. sekunnin jälkeen.
    jumps: 3, // jumps in level,
    distance: 299, // pixels walked/jumped in level
    answers: [{
      solve: timestamp, // aikaleima kun ratkaisua yritettiin
      accuracy: 50, // tarkkuus ja suunta desimaaliosana 0,X
      x: 240, // tarkka vastauskohta kentässä
    }, {}]
  }]
};

var gameEvent = {
  id: 1, // tapahtuma id
  playerId: 1, // pelaalan id
  worldId: 1, // maailman id
  movement: 1, // pelitapa 1=näppis, 2=kallistus, 3=juoksu+kallistus
  health: 20, // elinvoimaa pelin lopussa, jos nolla niin game over
  levels: [{ // pelatut tasot
    id: 1, // tason id
    level_format: 1, // desimaali vai murtoluku taso
    solved: timestamp, // sekuntia tason ratkaisuun
    skip: timestamp, // käytettiinkö ratkaisun näyttöä.
    trap: timestamp, // laukesiko ansa. sekunnin jälkeen.
    jumps: 3, // jumps in level,
    distance: 299, // pixels walked/jumped in level
    answers: [{
      solved: timestamp, // aikaleima kun ratkaisua yritettiin
      accuracy: 0.50, // tarkkuus. suunta etumerkkinä
      x: 240, // tarkka vastauskohta kentässä
    }, {}]
  }]
};