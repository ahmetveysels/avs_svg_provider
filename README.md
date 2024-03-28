# AVS SVG Provider


The AVSSVGProvider package. A Flutter package to use your SVG files as an ImageProvider.


With the package you can color SVG files with color and LinearGradient.



## Getting started

No permission is needed.

## Usage 

Please review the example folder


```dart
Container(
    width: MediaQuery.sizeOf(context).width,
    height: MediaQuery.sizeOf(context).width,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.contain,
            image: AVSSVGProvider(
                'assets/layer1.svg',
                scale: 9,
                gradient: const LinearGradient(
                colors: <Color>[Colors.red, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                ),
            ),
        ),
    ),
    child: const Text(
                "AVSSVGProvider Gradient Example",
                style: TextStyle(color: Colors.white),
    ),
),
 
```

## Using SVG Color
 
```dart
Image(
    image: AVSSVGProvider(
        'assets/layer3.svg',
    ),
),
``` 

## Screenshot

![Screenshot](https://ahmetveysel.com/flutterpackages/avs_svg_provider/screenshot.png)



## Additional information
 
[ahmetveysel.com](https://ahmetveysel.com)
##
<img src='https://ahmetveysel.com/flutterpackages/logo.png' width='125'> 