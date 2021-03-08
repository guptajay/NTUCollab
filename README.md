# NTUCollab: A Collaboratory Platform for NTU Students
> CZ3002 Advanced Software Engineering \
> School of Computer Science and Engineering \
> Nanyang Technological University, Singapore

NTUCollab will be an application developed to meet the needs and facilitate more interaction between the NTU Community. The cross-platform mobile application will allow students to find groups among their peers based on similar interests and hobbies. The user will be asked to select some tags which define their personality traits and interests. Accordingly, the application will show them a list of groups, and clubs which they can be a part of.  

Social Interactions plays an important role in an individual’s life, especially a university student. Surveys show that level of stress among college students across the world is at an average of 62% but among the students in Singapore, it is at a very high mark of around 85-90 % [1]. One of the major reasons of this high level of perceived stress is the increased focus on academic knowledge and grades, which leaves no time for individuals to pursue their hobbies and interact with people outside their academic bubble. Unfortunately, there are not many applications which address this issue among students.  

Applications provided by our university like NTULearn [2] and U-Wave [3], which are the most extensively used applications among students, only serve individual needs and do not facilitate an easy form of interaction and group creation among their peers. These apps are academically focused and hence just facilitate discussions regarding courses and schoolwork.  

Our application allows users to join the group under 3 categories mainly “Modules”, “Clubs” and “Interests”. Groups under “Modules” would facilitate easy interaction among the batchmates as well as people who are interested in taking a particular module. Students often want to find more about individual experiences of other students who have taken a particular course in the past, hence the “Module” groups will serve as a common platform for students to get more information on a course they are interested in and at the same time providing an easily accessible platform for the students who have taken a module to discuss. Groups under “Clubs” and “Interests” will be more interactive where students can discuss and pursue their passions while collaborating with their peers. Groups under “Module” and “Clubs” would display information regarding their respective purpose as well as have a user group to discuss matters, while groups under “Interests” will focus more on serving as a forum for discussion among the members. We all know that universities are much more than academics and here an individual grows in all directions and not just gains academic knowledge. There needs to be an application which facilitates engagement inside and outside the academic world and our application provides a perfect platform for this issue.  

## Installation

Make sure you have the following dependencies available:

* Linux, Mac OS X, or Windows.

* git (used for source version control).

* An IDE. Android Studio with the Flutter plugin is our flagship IDE. You can use whatever IDE you feel most comfortable with.

* An ssh client (used to authenticate with GitHub).

* Python (used by some of our tools).

* The Android platform tools.

You can install this using one of the following commands:

* Mac: `brew cask install android-platform-tools`
* Linux: `sudo apt-get install android-tools-adb`

If you're also working on the Flutter engine, you can use the copy of the Android platform tools in `.../engine/src/third_party/android_tools/sdk/platform-tools`.

Run the following steps to set up your environment:

1. Ensure that `adb` (from the Android platform tools) is in your path (e.g., that `which adb` prints sensible output).

2. Fork `https://github.com/flutter/flutter` into your own GitHub account. If you already have a fork, and are now installing a development environment on a new machine, make sure you've updated your fork so that you don't use stale configuration options from long ago.

3. If you haven't configured your machine with an SSH key that's known to github then follow the directions here: https://help.github.com/articles/generating-ssh-keys/.

4. `git clone git@github.com:<your_name_here>/flutter.git`

5. `cd flutter`

6. `git remote add upstream git@github.com:flutter/flutter.git` (So that you fetch from the master repository, not your clone, when running `git fetch` et al.)

7. Add this repository's `bin` directory to your path. That will let you use the `flutter` command in this directory more easily.

8. Run `flutter update-packages` This will fetch all the Dart packages that Flutter depends on. If version solving failed, try `git fetch upstream` to update Flutter versions before `flutter update-packages`. (You can replicate most of what this script does by running `pub get` in each directory that contains a `pubspec.yaml` file, which is rather tedious, hence the script.)

9. If you plan on using IntelliJ as your IDE, then also run `flutter ide-config --overwrite` to create all of the IntelliJ configuration files so you can open the main flutter directory as a project and run examples from within the IDE.

To run the application, switch to NTUCollab's directory, and use `flutter run`. Make sure you have an emulator running, or a device connected over USB and debugging enabled on that device.

* `cd NTUCollab`
* `flutter run`

> Flutter Environment Setup Guide retrieved from [here](https://github.com/flutter/flutter/wiki/Setting-up-the-Framework-development-environment).


## Authors

* Gupta Jay
* Mundhra Divyesh
* Kanodia Ritwik
* Bhatia Ritik
* Bansal Aditya
* Somani Palak
* Dandapath Soham
