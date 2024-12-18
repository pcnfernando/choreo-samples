import ballerina/graphql;
import ballerina/http;

service /hello on new http:Listener(8099) {
    resource function get greeting() returns string {
        return "Hello, World!";
    }
}

# A service representing a network-accessible GraphQL API
service / on new graphql:Listener(8090) {

    # A resource for generating greetings
    # Example query:
    #   query GreetWorld{ 
    #     greeting(name: "World") 
    #   }
    # Curl command: 
    #   curl -X POST -H "Content-Type: application/json" -d '{"query": "query GreetWorld{ greeting(name:\"World\") }"}' http://localhost:8090
    # 
    # + name - the input string name
    # + return - string name with greeting message or error
    resource function get greeting(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }

    remote function createUser(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "User created with name: " + name;
    }
}

service / on new graphql:Listener(8090) {

    # A resource for generating greetings
    # Example query:
    #   query GreetWorld{ 
    #     greeting(name: "World") 
    #   }
    # Curl command: 
    #   curl -X POST -H "Content-Type: application/json" -d '{"query": "query GreetWorld{ greeting(name:\"World\") }"}' http://localhost:8090
    # 
    # + name - the input string name
    # + return - string name with greeting message or error
    resource function get greeting(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }

    remote function createUser(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "User created with name: " + name;
    }
}

