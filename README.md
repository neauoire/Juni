# Juni Keyboard

The [Juni Layout](http://wiki.xxiivv.com/Juni) is a **12-keys [chorded keyboard](https://en.wikipedia.org/wiki/Chorded_keyboard)** running on Pimoroni's [Keybow](https://learn.pimoroni.com/keybow). It was designed to be used with the [Orca livecoding environment](http://github.com/hundredrabbits/Orca/), but has most common keys and controls, making it a versatile and portable single-handed keyboard.

You can see the `juni.lua` in action [here](https://twitter.com/neauoire/status/1112617902270607360).

<img src='https://wiki.xxiivv.com/media/diary/593.jpg' width='600'/>

## Installation

Save `juni.lua` into the `/layouts` folder, and modify `keys.lua`, by adding the following line and **comment previously active layouts**:

```
require "layouts/juni" -- 12 Keys Chorded Keyboard
```

## Layout

There are **8 input keys**(`in`), and **4 function keys**(`fn`). 

Typing letters & numbers is done by moving across the different layers of the keyboard. 

| row1    | row2    | row3    | row4    |
| :-:     | :-:     | :-:     | :-:     |
| in8 `B` | in7 `8` | in6 `5` | in5 `2` |
| in4 `A` | in3 `7` | in2 `4` | in1 `1` |
| fn4 `9` | fn3 `6` | fn2 `3` | fn1 `0` |

## Guide

There are **9 layers in total**, by default, the 8 top keys will input the values of `layer 0`. Layers are navigated by holding down an input key and typing a second key. For instance, holding down `in1`, and then tapping `in8`, will input `w`. To capitalize it, just hold down the `fn4` key, before holding down `in1`, and then tapping `in8`.

### Input Layers

| Layer 0 | Layer 1 | Layer 2 | Layer 3 | Layer 4 |
| :-:     | :-:     | :-:     | :-:     | :-:     |
| `hsni`  | `wmuc`  | `kvbp`  | `321z`  | `0987`  |
| `oate`  | `ldr*`  | `yg*f`  | `q*xj`  | `*543`  |

### Special Layers

#### Layer 5 — Math Layer

| row1 | row2 | row3 | row4       |
| :-:  | :-:  | :-:  | :-:        |
| ?    | ?    | ?    | *          |
| `-`  | `=`  | `/`  | `backtick` |

#### Layer 6 — Punctuation Layer

| row1 | row2 | row3 | row4 |
| :-:  | :-:  | :-:  | :-:  |
| ?    | ?    | *    | ?    |
| `;`  | `'`  | `,`  | `.`  |

#### Layer 7 — Brackets Layer

| row1   | row2 | row3 | row4 |
| :-:    | :-:  | :-:  | :-:  |
| `pipe` | *    | `<`  | `>`  |
| `(`    | `)`  | `[`  | `]`  |

#### Layer 8 — Navigation Layer

| row1     | row2         | row3         | row4          |
| :-:      | :-:          | :-:          | :-:           |
| *        | `home`       | `arrow up`   | `end`         |
| `escape` | `arrow left` | `arrow down` | `arrow right` |

### Functions Keys

| **fn4** | **fn3**     | **fn2** | **fn1** |
| :-:     | :-:         | :-:     | :-:     |
| `shift` | `backspace` | `enter` | `space` |

### Extras

- To use capslock, double-tap **fn4**. 
- To use delete, instead of backspace, hold **fn4** and tap **fn3**.
- To input a tab, hold **fn4** and tap **fn1**.
- To input curlies, use the sequences **fn4 + in7 + in2**, and **fn4 + in7 + in1**.

### TODOs

- Implement `Meta/Ctrl` keys.
- Allow for key repeat for layered inputs.


