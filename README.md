## Setup

* Setup local SSH keys with bitbucket (need for pub get - fetching bilsame package)
* Setup lefthook
    * https://github.com/evilmartians/lefthook/
    * run ```lefthook install``` in project root directory

### Run code generation
* flutter pub run build_runner build --delete-conflicting-outputs
or can watch changes
* flutter pub run build_runner watch --delete-conflicting-outputs