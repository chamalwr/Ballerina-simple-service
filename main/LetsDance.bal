import ballerina/io;
import ballerina/http;
import ballerina/log;

service helloDancers on new http:Listener(8081){

    resource function greetings(http:Caller caller, http:Request request) {
	    var delstate = caller -> respond("Hello World from Ballerina!");

	    if(delstate is error){
            log:printError("Error in Deliver State", err = delstate);
        }
    }
}