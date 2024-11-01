//Lists

//List of icons the icons could turn into
var icons = ["icon://fa-heart", 
                 "icon://fa-music", 
                 "icon://fa-smile-o", 
                 "icon://fa-globe", 
                 "icon://fa-tree", 
                 "icon://fa-bolt", 
                 "icon://fa-moon-o",
                 "icon://fa-star"];
//List of the colors the icons could turn into
var colors = ["rgb(0, 0, 255, 0.5)", "rgb(255, 0, 0, 0.5)", "rgb(0, 128, 0, 0.5)", "rgb(255, 255, 0, 0.5)", "rgb(255, 165, 0, 0.5)", "rgb(128, 0, 128, 0.5)", "rgb(165, 42, 42, 0.5)", "rgb(255, 192, 203, 0.5)"];

//Randomize
randomizeColors();
randomizeLocations();
randomizeShapes();

//Events
onEvent("colorsButton", "click", function( ) {
  randomizeColors();
});

onEvent("locationsButton", "click", function( ) {
  randomizeLocations();
});

onEvent("shapesButton", "click", function( ) {
  randomizeShapes();
});

//Functions
function randomizeColors( ) {
  setProperty("homeScreen", "background-color", colors[randomNumber(0, colors.length-1)])
  for (var i = 0; i < 20; i++) {
    setProperty("icon"+i, "icon-color", colors[randomNumber(0, colors.length-1)]);
  }
}

function randomizeShapes( ) {
  var image = icons[randomNumber(0, icons.length-1)]
  for (var i = 0; i < 20; i++) {
    setProperty("icon"+i, "image", image);
  }
}

function randomizeLocations( ) {
  for (var i = 0; i < 20; i++) {
    setProperty("icon"+i, "x", randomNumber(0, 315));
    setProperty("icon"+i, "y", randomNumber(0, 410));
    var size = randomNumber(75, 150);
    setSize("icon"+i, size, size)
  }
}
