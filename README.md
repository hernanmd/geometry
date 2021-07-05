# Geometry [![Build Status](https://travis-ci.org/peteruhnak/geometry.svg?branch=master)](https://travis-ci.org/peteruhnak/geometry)

This fork was made as temporary measure while porting OpenPonk from Roassal 2 to Roassal 3.
This fork prefixes classes from G... to GOP... and method names with #gop....


A simple work-in-progress library for representing basic geometry shapes (line, circle, ellipse, ...) and doing some computations of top (mainly intersection).

## Installation

```st
Metacello new
    baseline: 'Geometry';
    repository: 'github://hernanmd/geometry/repository';
    load.
```
