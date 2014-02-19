PMMetroView
===========

A UIView subclass to display the parisian subway lines' logo without any image files

# Comparisons

Those are very simple tests for the moment being. Please feel free to add more

  - SVG : 15 489 bytes
  - h. + .m  : 37 061
  - PNG, 48pts x 48 pts , low-res/retina :  38591 / 80035 bytes

And because of what Da Vinci said:

![A chart comparing size differences between SVG, Objective-C and PNG](./Experiments/chart01.png "Comparison size differences between SVG, Objective-C and PNG")

# Protocol

SVG were converted to `.h/.m` using CodePaint and to `.png` using:

    find . -name '*.svg' | xargs -n1 sh -c 'convert "$0" -thumbnail 96x96 "$0.png"'

Sizes were computed using

    find . -type f -name "metrol*.svg.png"  -exec ls -l {} \; | awk '{sum += $5} END {print sum}' 

# Credits

SVG files used comes from Clement Oriol's [MetroDNA](https://github.com/clementoriol/MetroDNA)