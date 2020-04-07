# CSS layout

those essay provide useful basic layout tool and technical instructive in css

## introduce css layout

this article will restate some of the css layout feature what we covered in privious modules. for example,different display value---and ,introduce some concept in the unit.

## normal layout stream

this eassy introduce normal stream layout,in other word,layout page of elements without change the default layout ruls.

## flex box

flex box is new technology.but with widely support in every browser,it readly ready to spread use.

弹性盒子提供了工具，允许快速创建曾经被证明用CSS很难实现的一些复杂，灵活的布局和功能。本文将解释所有的基本原理

### 为什么是弹性盒子

长久以来，CSS布局中唯一可靠且跨浏览器兼容的创建工具只有floats和positions.这两个工具大部分情况下都很好使。
但是在某些方面他们具有一定的局限性，让人难以完成任务。

* 在父元素中垂直居中一个块内容
* 使容器的所有子项占用等量的可用宽度/高度，而不管有多少宽度/高度可用
* 使多列布局中的所有列采用所有的高度，即使他们包含的内容量不同

``` css
div {
    display:flex;
}
.item {
    flex:1;
}
```

## grid

## float

## position

## multi-column layouts

## reponsive layout
