/* global Application */
let output = ''
if (Application('iTunes').running()) {
  const track = Application('iTunes').currentTrack
  const artist = track.artist()
  const title = track.name()
  output = (`${title} - ${artist}`)
} else if (Application('Spotify').running()) {
  const track = Application('Spotify').currentTrack
  const artist = track.artist()
  const title = track.name()
  output = (`${title} - ${artist}`)
}
const size = Math.ceil(output.length / 50)
const mod = (new Date()).getSeconds() % size

output = output.substr(50 * mod, (50 * mod) + 50)

const missingPad = 50 - output.length

for (let i = 0; i < missingPad; i++) {
  output += ' '
}

output = '♫ ' + output
