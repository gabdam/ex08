import "package:ex08/fcn_08.dart";

void main(){
  // For #1
  var members = [
    {"association": "CPA", "firstName": "Jean", "lastName": "Jobin", "email": "jj@gmail.com"},
    {"association": "CPA", "firstName": "Barnaby", "lastName": "Jones", "email": "bj@gmail.com"},
    {"association": "CMA", "firstName": "Julie", "lastName": "Lajoie", "email": "jl@gmail.com"},
    {"association": "CFA", "firstName": "Dominic", "lastName": "Tellier", "email": "dt@gmail.com"},
    {"association": "CFA", "firstName": "Antony", "lastName": "Chapman", "email": "ac@gmail.com"}];
  
  print("-----------------------NUMBER ONE-----------------------");
  print("--> Create a list of associations of members and sort them.");
  print("");
  print("========== Sorted members by last name ==========");
  print(sortLastName(members));
  
  print("========== Sorted members by first name ==========");
  print(sortFirstName(members));
  
  var firstLetter = "J"; // First letter to use
  print("========== Members with last name starting by letter (J) ==========");
  print(sortFirstLetter(members, firstLetter));
  print("");

  // For #2
  // Add a member in the map
  print("-----------------------NUMBER TWO-----------------------");
  print("--> Add, remove and update entities of a class model.");
  print("");
  print("========== Add a member --> Alfred Hitch ==========");
  print (addMembers(members, "CMA", "Alfred", "Hitch", "ah@gmail.com")); // We add this new guy to the members
  print("");
  
  // Remove a member in the map
  print("========== Remove a member --> Jean Jobin ==========");
  print (removeMembers(members, "Jean", "Jobin")); // Here we need the exact first name AND the last name. 
  print("");
  
  // Update a member in the map
  print("========== Update a member (email in this case) --> Barnaby Jones ==========");
  print (updateMembers(members, "CPA", "Barnaby", "Jones", "barnj@hotmail.com")); // Here we change the email of M. Jones. 
  print("");
}
