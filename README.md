# Juni Keyboard

The [Juni Layout](http://wiki.xxiivv.com/Juni) is a **12-keys [chorded keyboard](https://en.wikipedia.org/wiki/Chorded_keyboard)** running on Pimoroni's [Keybow](https://learn.pimoroni.com/keybow). It was designed to be used with the [Orca livecoding environment](http://github.com/hundredrabbits/Orca/), but has most common keys and controls, making it a versatile and portable single-handed keyboard.

The `juni.lua` layout goes into the root of the SD Card, you can see it in action [here](https://twitter.com/neauoire/status/1112617902270607360).

<img src='https://wiki.xxiivv.com/media/diary/593.jpg' width='600'/>

## Layout

There are **8 input keys**(`in`), and **4 function keys**(`fn`). Typing letters & numbers is done by moving across the different layers of the keyboard. 

| row1    | row2    | row3    | row4    |
| :-:     | :-:     | :-:     | :-:     |
| in8 `B` | in7 `8` | in6 `5` | in5 `2` |
| in4 `A` | in3 `7` | in2 `4` | in1 `1` |
| fn4 `9` | fn3 `6` | fn2 `3` | fn1 `0` |

## Guide

There are **9 layers in total**, by default, the 8 top keys will input the values of the layer 0.

### Input Keys

Layers are navigated by holding down an input key and typing a second key. For instance, holding down `in1`, and then tapping `in8`, will input `w`. 

| Layer 0 | Layer 1 | Layer 2 | Layer 3 | Layer 4 |
| :-:     | :-:     | :-:     | :-:     | :-:     |
| `hsni`  | `wmuc`  | `kvbp`  | `321z`  | `0987`  |
| `oate`  | `ldr*`  | `yg*f`  | `q*xj`  | `*543`  |

### Functions Keys

| **fn4** | **fn3**     | **fn2** | **fn1** |
| :-:     | :-:         | :-:     | :-:     |
| `shift` | `backspace` | `enter` | `space` |

### Special Layers

#### Math Layer(Layer 5)

| row1 | row2 | row3 | row4       |
| :-:  | :-:  | :-:  | :-:        |
| ?    | ?    | ?    | *          |
| `-`  | `=`  | `/`  | `backtick` |

#### Punctuation Layer(Layer 6)

| row1 | row2 | row3 | row4 |
| :-:  | :-:  | :-:  | :-:  |
| ?    | ?    | *    | ?    |
| `;`  | `'`  | `,`  | `.`  |

#### Brackets Layer(Layer 7)

Note that the `{` and `}` characters are usually typed using `shift+[`, and `shift+]`, or **fn4 + in7 + in2**, and **fn4 + in7 + in1**.

| row1 | row2 | row3 | row4 |
| :-:  | :-:  | :-:  | :-:  |
| ?    | *    | `<`  | `>`  |
| `(`  | `)`  | `[`  | `]`  |

#### Navigation Layer(Layer 8)

| row1     | row2         | row3         | row4          |
| :-:      | :-:          | :-:          | :-:           |
| *        | `home`       | `arrow up`   | `end`         |
| `escape` | `arrow left` | `arrow down` | `arrow right` |

### Extras

- To use capslock, double-tap **fn4**. 
- To use delete, instead of backspace, hold **fn4** and tap **fn3**.
- To input a tab, hold **fn4** and tap **fn1**.

