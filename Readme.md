# Project Title
Automation project to test "Propine Date Parser"
https://vast-dawn-73245.herokuapp.com/

## Prerequisites
Language: JAVA
IDE  : Intellij
Test Framework : BDD (Cucumber)
Build tool: Maven
Test dataData to be passed: through scenario outline and examples using cucumber
Chrome Browser

### Installing
Install Intellij (any edition)
Install java
Install Maven
Download Chrome driver to run selenium tests

## Running the tests
Steps:
1. Clone the Repository
2. Navigate to PropineTest Folder
3. Import pom.xml from selenium Folder
4. Use commands mvn test and mvn install to install the dependencies
5. Add the plugin "cucumber-java" for better visibility of gherkin Language
6. Run the Feature File: PropineTest.feature (src/java/test/features)
    Main class: cucumber.api.cli.Main
    Glue : stepDefinitions (src/test)
    Classpath for module: selenium
    Java JDK: installed version (1.8)
7. Run the tests by running the feature file    


## Authors
Vinayak

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
