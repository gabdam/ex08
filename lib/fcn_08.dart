library ex08;

// For #1
// Sort first names alphabetically
sortFirstName(var members) {
members.sort((a, b) => a["firstName"].compareTo(b["firstName"]));
for (var sort in members) {
print(sort);
}
return ("");
}

// Sort last names alphabetically
sortLastName(var members) {
members.sort((a, b) => a["lastName"].compareTo(b["lastName"]));
for (var sort in members) {
 print(sort);
}
return ("");
}

// Print last names starting with letter "J" only
sortFirstLetter(var members, var firstLetter) {  
for(var j in members) {
 if(j["lastName"][0] == firstLetter)
        print(j);}
return("");
}

//For #2
// Based on dzenanr example: https://github.com/dzenanr/association
addMembers(var members, var association, var firstName, var lastName, var email) {  // The variables are the informations we want about our new member
members.add({
 "association" : association,
 "firstName": firstName,
 "lastName": lastName,
 "email": email
});
for (var add in members) {
 print(add);
}
return ("***The member has been added!***");
}

// Inpired by user Aljul ex08 on github
removeMembers(var members, var fnToRemove, var lnToRemove) {  // To remove the member we will need his first name AND his last name to be more precise. Otherwise, it won't work!
for (var remove = 0; remove < members.length; remove++) {
 Map removeMember = members[remove];
 var firstName = removeMember["firstName"];
 var lastName = removeMember["lastName"];
 if (firstName == fnToRemove && lastName == lnToRemove) {  // We compare if the entered first and last names are the same as in the map
   members.remove(removeMember);  // We remove the member is the conditions are true
 }
}
for (var remove in members) {
 print(remove);
}
return ("***The member has been removed!***");
}

updateMembers(var members, var association, var firstName, var lastName, var email) { 
for (var update = 0; update < members.length; update++) {
 if (firstName == members[update]["firstName"] && lastName == members[update]["lastName"]) {  // We verify the member by his complete name
   members[update]["association"] = association;
   members[update]["firstName"] = firstName;
   members[update]["lastName"] = lastName;
   members[update]["email"] = email;
 }
}
for (var update in members) {
 print(update);
}
return ("***The member has been updated!***");
}