# circular_indicator

## Demo
<p align="center">
  <img src="https://raw.githubusercontent.com/quangkhuongduy0195/circular_indicator/master/example/demo/demo.gif" alt="sample gif"/>
</p>


```dart
  CircularIndicatorWidget(
    width: 200,
    height: 200,
    current: _value,
    maxStep: 100,
    widthLine: 2.5,
    heightLine: 20,
    curve: Curves.easeInOutCirc,
    gradientColor: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Colors.cyan, Colors.orangeAccent],
  )
```


| Parameter| Type| Description| Default|
|----------|-----|------------|---------|
|**maxStep**|double|Total number of step of the complete indicator.|100|
|**current**|double|Number of steps to underline, all the steps with index <= currentStep will have Color equal to selectedColor.|0|
|**widthLine**|double|Thickness of the brick line.|3|
|**heightLine**|double|Height of selected tile line. The height of the unselected line is equal to heightLine/2|20|
|**height**|double|	Height of the indicator's container.|-|
|**width**|double|Width of the indicator's container.|-|
|**selectedColor**|Color|Color of the selected steps.|Colors|
|**unselectedColor**|Color|Color of the unselected steps.|Colors|
|**gradientColor**|Gradient|Apply a gradient color to the indicator.|-|
|**child**|Widget|Widget child contained inside the indicator.|-|
|**duration**|Duration|Animation duration to change state|2 seconds|
|**curve**|Curves|Status change animation|Curves.easeInOutQuint|