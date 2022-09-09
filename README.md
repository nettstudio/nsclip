# nsClip

Simple application that removes whitespace from clipboard.

## Workflow

* Copy some text (``Ctrl+C``)
* Remove whitespace (``Alt+Win+C``)
* Paste text (``Ctrl+V``)

## How does it work?

The application runs in the background and when activated (``Alt+Win+C``) will strip whitespace from the current clipboard text.

### Input

```
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla est purus, ultrices in porttitor
in, accumsan non quam. Nam consectetur porttitor rhoncus. Curabitur eu est et leo feugiat
auctor vel quis lorem. Ut et ligula dolor, sit amet consequat lorem. Aliquam porta eros sed
velit imperdiet egestas. Maecenas tempus eros ut diam ullamcorper id dictum libero
tempor. Donec quis augue quis magna condimentum lobortis. Quisque imperdiet ipsum vel
magna viverra rutrum. Cras viverra molestie urna, vitae vestibulum turpis varius id.
```

### Output

```
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla est purus, ultrices in porttitor in, accumsan non quam. Nam consectetur porttitor rhoncus. Curabitur eu est et leo feugiat auctor vel quis lorem. Ut et ligula dolor, sit amet consequat lorem. Aliquam porta eros sed velit imperdiet egestas. Maecenas tempus eros ut diam ullamcorper id dictum libero tempor. Donec quis augue quis magna condimentum lobortis. Quisque imperdiet ipsum vel magna viverra rutrum. Cras viverra molestie urna, vitae vestibulum turpis varius id.
```
