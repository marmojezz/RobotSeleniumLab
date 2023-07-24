# RobotSeleniumLab

This repository holds my finds about Selenium Universe

## Introduction
During an interview, 3 exercicies were given to be solved. Basicaly to create automation for do simple things. However, I got extreme dificulty to do that. Firtly, creating an test environment. Second, installing the Selenium for Chrome since I had not the admin permition to install the chromewebdriver. Third, having problems to open a simple URL. I was a disaster. Anyway, it is the motive to be here, working to fix that gap in my professional life. 

## Objectives
1. Learn more about the Selenium Automation Tool (This Readme is a great start for me)
1. Create an very detailed tutorial from the scratch to install the Selenium for Java
2. Create an very detailed tutorial from the scratch to install the Selenium for C#
3. Create an very detailed tutorial from the scratch to install the Selenium for Phyton
4. Solve the exercicie that I had dificult to get done
5. Automate the test environment setup for the itens 1, 2 and 3.
6. Hold this folder as a test lab for new finds about Selenium.

## About Selenium
1. It is an open source automation testing tool exclusive for web based application. Not desk application. Not Server application.
2. It works on multiple operation system. It brings great flexibility;
3. It is supported by Windows, OS X, Linux and Solaris;
4. It is supported by Java, C#, Ruby, Python, Php and Perl;
5. It is supported by InternetExplorer, Firefox, Chrome and Safari;
5. The language that you use to write your automation could differs from the application language.

## Installation Guide
This session contains all the information to setup your test enviroment with selenium manually.

### Selenium for Java (Win)

1. Java Installation
1.1. Open your browser and access https://www.oracle.com/technetwork/pt/java/javase/downloads/index.html
1.2. Click Download button under JDK.
1.3. In the "Java SE Development Kit ..." section, accept the License Agreement
1.4. Download the JDK that match your system.
1.5. Install it clicking Next..Next...Next (TODO: silent installation standalone or online)
2. Configure Java path in system variable
2.1 Click Win + R to open the run field
2.2 type "SystemPropertiesAdvanced" and press ENTER
2.3 Click the "Environment Variables" in the botton of the System Properties gui.
2.4 Verify if the variable JAVA_HOME is already created.
2.5 If not, click the second "New" button and type "JAVA_HOME" as variable name and type the path where the jdk was installed. It is usually at %PROGRAMFILES%\Java\jdk***\bin. (in my case C:\Program Files (x86)\Java\jdk1.8.0_181\bin)
2.6 Now, verify if the path %JAVA_HOME%\bin is included in the path system variable. 
2.7 If not, add it.
3. Eclipse Installation
   * Download it at https://www.eclipse.org/downloads
4. Create new Eclipse Project
  * The First Project is Test Suite
  * Each Java class file is a Test Case (It can be replaced with a JUnit Class.)
5. Selenium jars download
  * Download Selenium Client accessing the https://www.seleniumhq.org/download/ for Java.
6. Configure Selenium jars in project build path
  * Click righ in the Project folder and access the properties
  * Navigate to Libraries, click Add External JARS and add all jars present in the Selenium fonder
7. Choose browser to run
  * The user should download the correc driver to deal with the choosen browser under the session "Third Party Drivers, Bindings, and Plugins" from the same link https://www.seleniumhq.org/download/. (I have choose the chrome)
8. Create Driver object based on brower choosen
9. Set System property of the browser
10. Run the "Hello World!" program

## References
