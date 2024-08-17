# Try_flutter

A new Flutter project. this branch is create for learning flutter and dart. by following the tutorial from [Mitch Koko](https://youtu.be/TclK5gNM_PM?si=UaPq1Ie5lgcQUtGK)

## Lesson 1 - TO DO APP

this is a simple to do app that allows you to add tasks and delete them.

![App Screenshot](./doc/to-do-app.gif)

## What I learned

- Interactive
    - GestureDetector
- Layout
    - MaterialApp
        - theme
        - home
    - Scaffold
        - ListView
        - Stack
        - Grid
        - Row
        - Column
            - Expend
                - Flex
            - mainAxisAlignment
            - crossAxisAlignment
- Navigation
    - Drawer
    - BottomNavigatorBar
    - Declare structure
        - MaterialApp.Routes - declare
        - Navigator.pushNamed
- State
    - Stateless
        - Constructor as props
            - VoidCallback
            - Function(bool?)? onPressed
    -  Stateful
- Form
    - TextField
- Controller
	- .text
	- .clear()
- Modal
    - showDialog()
        - DialogBox()
            - Navigator.pop(context)
- ThemeData
    - ColorScheme.fromSeed
        - seedColor
        - brightness
        - primary
- Local Storage
    - pubspec
        - dev_dependencies
            - build_runner
            - hive_generator
        - dependencies
            - hive
            - hive_flutter
    - Hive.openBox('todoBox')
        - Hive.box(‘todoBox’)
            - get()
            - put()
