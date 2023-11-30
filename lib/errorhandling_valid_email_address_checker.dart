/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/errorhandling_valid_email_address_checker_base.dart';

/*
Practice Question 2: Valid Email Address Checker

Task:

Create a function named validateEmailAddress that 
takes a string and checks if it is a valid email address.

If the email address is invalid, 
throw a custom exception named InvalidEmailException.

The validation should include checks for common email address 
criteria like the presence of an "@" symbol and a domain.
 */

void validateEmailAddress(String candidate){
  if(!RegExp(r'^[\w\.-]+@[\w\.-]+\.[a-z]{2,}$').hasMatch(candidate)){
    throw InvalidEmailException("Your email: $candidate is invalid");
  }
}

class InvalidEmailException implements Exception {
  InvalidEmailException(this.message);
  String message;
}