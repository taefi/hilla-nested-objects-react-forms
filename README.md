# Nested Objects and React Froms in Hilla

This project is a fast prototype showing how to use `useForm` and `useFormPart` hooks to
create a form for a top level object and its nested objects.
This is not by any mean s a complete solution, nor does it show what is the best way 
to model the entities. It is just quick and dirty try to showcase the use of forms and
objects with nested objects.

The entities are:

```
Employee
|_ Manager (many to one - self reference)
|_ ContactInfo (one to one)
    |_ Address (one to one)
       |_ City (many to one)
          |_ Country (many to one)
```

The main form of the application is the `Employee` form. It uses `AutoGrid` for listing the data
as wel as a custom form for adding/editing the data.

In addition, it leverages from `AutoCrud` component for simple data entry and listing of the
`Country` and `City` entities.

## Running the application

The project is a standard Maven project. To run it from the command line,
type `mvnw` (Windows), or `./mvnw` (Mac & Linux), then open
http://localhost:8080 in your browser.

You can also import the project to your IDE of choice as you would with any
Maven project.

## Deploying to Production

To create a production build, call `mvnw clean package -Pproduction` (Windows),
or `./mvnw clean package -Pproduction` (Mac & Linux).
This will build a JAR file with all the dependencies and front-end resources,
ready to be deployed. The file can be found in the `target` folder after the build completes.

Once the JAR file is built, you can run it using
`java -jar target/myapp-1.0-SNAPSHOT.jar` (NOTE, replace
`myapp-1.0-SNAPSHOT.jar` with the name of your jar).
