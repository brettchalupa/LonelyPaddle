# Lonely Paddle

Tennis for those lacking friends.

A single player _Pong_ clone, mostly for learning purposes.

[🕹 Play the game in your browser!](https://brettchalupa.itch.io/lonely-paddle)

The game is built using [HaxeFlixel](https://haxeflixel.com).

Art, music, and code by [Brett Chalupa](https://www.brettchalupa.com).

## Developing

### Install Dependencies

1. Install Haxe (4.2.5+) - https://haxe.org/download/
2. Install the project dependencies - `haxelib install dependencies.hxml`
3. Run the following setup commands:

```
haxelib run lime setup flixel
haxelib run lime setup
haxelib run flixel-tools setup
```

### Testing

- Start the test server with: `lime test html5 -debug`
- Update the build with: `lime build html5 -debug`

### Building

Build the game for distribution with: `lime build html5 -final -clean`

### Production Assets

The asset source files for the game live in the `production` directory to make it easy to work with. Here's a list of the tools used:

- Music: 1BitDragon 3.1
- Aseprite for pixel art editing

Audio is formatted in both .ogg and .mp3 filetypes for trying to reach the most browser compatibility.