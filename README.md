# strive_flow

A Flutter Project about organizing your life in levels and step by step.

## Getting Started

to run the app on the web with hive being able to maintain data, use:
> flutter run -d chrome --web-port=5555

In another tab, if you are using annotations for code generation while developping, use the build_runner to generate code, in watch mode:
> flutter pub run build_runner watch --delete-conflicting-outputs

## deleting data in Hive database from browser

when we use hive on the browser, hive will store the data in indexedDB. 

To delete boxes (or even all data):
- right click => inspect
- inside inspect, go to application tab
- find IndexedDB and expand it
- you will be able to see the box data and delete said data/boxes


# Ideas

- Add a page for usual habits and custom habits. 
- Add a page for inspirations for rules and principles
- Add a page to explain what each is and how it work