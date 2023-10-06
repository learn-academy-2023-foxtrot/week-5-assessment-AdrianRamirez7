# ASSESSMENT 5: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

Type your initials here to confirm you read the instructions:

1. Why would super be used in a Ruby class?

Your answer: Super's are used in ruby as a partial way of setting up instance variable inheritance. For example, many times inside initializer methods, we often need to re use an instance variable more than once, this variable can have the value of a name, number, or a boolean. A fitting way of using the super keyword can be with a number instance, if we are tracking the current number of items in the main Ruby class A, and we need that same number count to be stored again in its subclass, without having to make another instance, we can transfer to the same item count in subclass B inside a super() keyword with the item variable name to save us from having to re assign another item count inside of the subclass.

Researched answer: The super keyword inside Ruby instructs the program to inherit all the functionalities of a method with an identical name from the parent class. It grants you the flexibility to augment these inherited functionalities with additional functions. The super keyword is useful for the following purposes: Invoking the implementation of the method from the superclass. Second, triggering a call to a parent method with the same name and arguments. Another useful way is it invokes the method defined in the parent class within the child class. Invoking the method from the SomeClass if you've defined the same method in both the module and the class. Finaly, the super keyword behaves like a regular method call and if the method it refers to does not exist, the terminal will output an error. 

2. What is a relational database? Are there other kinds of databases?

Your answer: A relational database is a structured data storage system comprising tables, each containing records and columns. In an relational data base, data elements possess predefined relationships. These tables interact and exchange information, enhancing the ability to search, manage, and generate reports from the data

Researched answer: 

3. What are primary keys? Why purpose does a primary key serve?

Your answer: The importance of primary keys is is to identify the uniqueness of a row, where as unique key is to prevent the duplicates, following are the main difference between primary key and unique key. For example, When looking inside a postgresql database of country names, the data can appear in numbered order with the country names alongside its individual primary key number. This is useful because it the primary key can ensure that a table record name can always be uniquely identified.

Researched answer: Relational databases maintain data in tables, providing an efficient, intuitive, and flexible way to store and access structured information. Tables, also known as relations, consist of columns containing one or more data categories, and rows, also known as table records, containing a set of data defined by the category. Applications access data by specifying queries, which use operations such as project to identify attributes and join to combine relations. 

4. What are the five HTTP verbs? What is each verb's corresponding CRUD action?

Your answer: The five most common verbs are GET: Retrieves information identified by the Request/URL. POST: Creates an item,  PUT: Updates an item, PATCH: Partially updates a resource, DELETE: Deletes an item. To begin back in the order, The GET method retrieves resources from the server, so you’re making a GET request when you enter a URL in your web browser. POST will be the data to be sent will be in the request body and has to conform to the content type format specified in the header. PUT will works somewhat like the POST method in that it sends data to the server to update a resource. PATCH updates a small portion of a resource, also this request is not always repeatable, as it may result in changes to various parts of the same URL resource, leading to different states. DELETE method deletes a resource. It contains the URL location of the resource but request body is optional.

Researched answer: GET: The GET method is primarily used to fetch information identified by a Request-URL. It's a safe method, meaning it doesn't alter the state of the requested resource. When the Request URL points to a data-producing process, the response typically includes the produced data, not the source text, unless the text itself is the result of a process POST is employed to send data to the server in the request body. It indicates that the data in the body should be accepted and likely stored on the server. The Content-Type header specifies the body's type. This method is often used for uploading files or submitting complete web forms. Responses to POST requests are typically not cacheable unless specified otherwise through Cache-Control or Expires headers. The PUT method serves to replace the existing state of a resource or create it if it doesn't exist, as determined by the origin server, using the request payload. PATCH is used for making partial updates to a resource. It's like an instruction set for modifying data already present on the server to create a new version of the data, rather than providing the entire resource. DELETE is used to remove a specified resource on the origin server. The client can't be certain that the operation was completed, even though the server's status code indicates it.HEAD is similar to a GET request, but the server doesn't send the response body. Instead, it sends the same headers that would be sent if the URI were requested with the GET method. This is useful for obtaining metadata without transferring the response body and is often used to validate hypertext links, check accessibility, and verify recent modifications.

5. STRETCH: What is a JOIN table in SQL?

Your answer: In SQL, a join is a statement that brings together information from two or more tables in a database. It allows you to retrieve and work with data from different tables by linking them through their logical connections.

Researched answer: A SQL join is a fundamental SQL operation that brings together information from two or more tables to create a unified dataset. It allows you to retrieve and work with data from multiple tables by leveraging the logical connections or relationships between them.

## Looking Ahead: Terms for Next Week

Research and define the following terms to the best of your ability.

1. Model validations: Model validation is the set of processes and activities intended to verify that models are performing as expected. 
The primary aim of a model is to provide predictions or insights regarding data. Model validation is the process of assessing whether the trained model is reliable and accurate. Additionally, model validation offers several advantages, including cost reduction, error detection, improved scalability and flexibility, and overall enhancement of model quality.

2. Params: params are parameters that are passed to the controller via a GET or POST request. You can access these params through the ApplicationController.

3. API: An API serves as a bridge for software developers to communicate with external software elements or assets. To put it even more straightforwardly, an API is like the gateway of a software component that can be utilized by other components.
