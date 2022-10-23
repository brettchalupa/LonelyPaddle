# Lonely Paddle

Tennis for those lacking friends.

The game is built using [HaxeFlixel](https://haxeflixel.com).

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
- Update assets with `lime update neko`

### Building

Build the game for playing with: `lime build html5 -final -clean`
