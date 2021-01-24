# HTML语法

## 基本语法

HTML语法结构

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    
</body>
</html>
```

`<html></html>`是整个网址的主体部分

`<head></head>`是网页的头部信息，里面的`<title></title>`是方也头部显示的信息

`<body></body>` 是网页的主体部分

`<body bgcolor="red"> ` bgcolor 是标签的数据

`<!--hr是注释-->` html 注释标签

## 修饰标签

文字倾斜标签

`<i>HTML</i>`

`<em>hello!</em>`

文字加粗标签

`<b>张三</b>`

`strong>李四</strong>`

上标和下标标签

` <sup>hello</sup> `

`<sub>world</sub>`

## 列表标签

### 无序列表标签

语法：`<ul><li></li></ul>`

EG:

```html
<h1>什么是HTML？</h1>
<p>HTML 是用来描述网页的一种语言。</p> 
<ul type="disc">
    <li>HTML 指的是超文本标记语言 (Hyper Text Markup Language)</li>
    <li>HTML 不是一种编程语言，而是一种标记语言 (markup language)</li>
    <li>标记语言是一套标记标签 (markup tag)</li>
    <li>HTML 使用标记标签来描述网页</li>
</ul>
```

无序列表标签有属性

| 属性名 | 描述   |
| ------ | ------ |
| disc   | 圆点   |
| square | 正方形 |
| circle | 空心圆 |

### 有序列表标签

语法：`<ol><li></li></ol>`

EG:

```html
<h1>什么是HTML？</h1>
<p>HTML 是用来描述网页的一种语言。</p> 
<ol type="1">
    <li>HTML 指的是超文本标记语言 (Hyper Text Markup Language)</li>
    <li>HTML 不是一种编程语言，而是一种标记语言 (markup language)</li>
    <li>标记语言是一套标记标签 (markup tag)</li>
    <li>HTML 使用标记标签来描述网页</li>
</ol>
```

无序列表标签有属性

| 属性名 | 描述           |
| ------ | -------------- |
| 1      | 数字1，2       |
| a      | 小写字母 a,b   |
| A      | 大写字母 A,B   |
| i      | 小写罗马数字 i |
| I      | 大写罗马数字I  |



### 定义列表标签

语法：`<dl><dt></dt><dd></dd></dl>`

EG:

```html
<dl>
    <dt>什么是HTML</dt> 
    <dd>HTML是用来描述网页的一种语言</dd>
    <dd>HTML超文本标记(Hyper Text Markup Language)</dd>
    <dt>HTML标签</dt>
    <dd>HTML标记标签通常被称为HTML 标签 </dd>
</dl>
```

**注意：<dl><dt><dd> 要组合使用**



## 图像标签

语法：`<img src="" alt="" .../>`

img 标签的属性

| 属性      | 值           | 描述          |
| --------- | ------------ | ------------- |
| Src(必写) | url          | 显示图像的URL |
| alt       | 文字         | 图像替代文字  |
| height    | 数值和百分比 | 图像的高      |
| width     | 数值和百分比 | 图像的宽      |

EG:

```html
<img src="img/html.jpg" alt="html基础课程" width="50px" height="80px">
```

## 超链接标签

语法：`<a href="">内容</a>`

超链接的属性

| 属性   | 描述                                     |
| ------ | ---------------------------------------- |
| href   | 链接地址                                 |
| target | 链接的目标窗口 _self _blank _top _parent |
| title  | 链接提示文字                             |
| name   | 链接命名                                 |

EG:

```html
 <a href="https://www.baidu.com/" target="_blank"><H2>javascript入门</H2></a>
```

## 锚链接

语法 

​        定义锚点的位置 `<a name="位置名称"></a>`

​        定义锚导航位置 `<a name="#位置名称"></a>`

EG:

```html
<a href="#html">html课程</a>
......
<a href="temp.html"  target="_self" name="html" >
        <img src="img/html.jpg" alt="html基础课程" >
</a>
```

锚链接不同页面

语法：`<a href="url/#锚点名称"></a>`

​            `<a href="#位置名称"></a>`

