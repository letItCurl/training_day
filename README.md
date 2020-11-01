# Training Day [![](https://img.shields.io/badge/autor-letItCurl-red.svg)](https://www.linkedin.com/in/roland-lopez-developer/?locale=en_US)
> Ruby workout 🤠

## STIMULUS INTRO

Simple html targing with data attrs:
```html
<div class="" data-controller="hello" data-hello-name="letItCurl">
  <input data-target="hello.name" type="text" data-action="paste->hello#paste">
  <button class="btn btn-primary" data-action="click->hello#log">LOG</button>
</div>
```

Function in packs/controller folder that defines methods to be done in the client side.

Seamless integration with webpack 💞
```javascript
import { Application } from 'stimulus'
import { definitionsFromContext } from 'stimulus/webpack-helpers'

const application = Application.start()
const controller = require.context("./controllers", true, /\.js$/)
application.load(definitionsFromContext(controller))
```

# About me

<table style="border: none;">
  <tr>
    <td>
      <div style="width: 120px;">
        <img style="width: 120px;" src="https://res.cloudinary.com/duydvdaxd/image/upload/w_120,c_fill,ar_1:1,g_auto/v1587723517/Rodeooo_khmmmu.jpg"/>
    </div>
    </td>
    <td>
      <div style="margin-left: 30px;">
        <p>Hey there !</br>
        I'm letItCurl, fullstack developer engineer in freelance</br>
        If you have any question you can <a href="https://www.linkedin.com/in/roland-lopez-developer/?locale=en_US">contact me</a> if you wish !</p>
        <p>I'm always ready to help !</p>
        <a style="color: #f694ff;" href="mailto:rolandlopez.developer@gmail.com?subject=Hey! Are you available?">Email me </a>
    </div>
    </td>
  </tr>
</table>
