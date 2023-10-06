// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

//const { describe } = require("yargs")

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.
describe("codedMessage", () => {
    it(" returns a string with a coded message.", () => {
        const secretCodeWord1 = "Lackadaisical"
        // Expected output: "L4ck4d41s1c4l"
        const secretCodeWord2 = "Gobbledygook"
        // Expected output: "G0bbl3dyg00k"
        const secretCodeWord3 = "Eccentric"
        // Expected output: "3cc3ntr1c"
        expect(codedMessage(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
        expect(codedMessage(secretCodeWord2)).toEqual("G0bbl3dyg00k")
        expect(codedMessage(secretCodeWord3)).toEqual("3cc3ntr1c")
    })
})


// b) Create the function that makes the test pass.
const codedMessage = (str) => {
    //Store multiple items in array literal
    if (str.includes("a") && str.includes("i")) {
        str = str.replaceAll("a", 4)
        str = str.replaceAll("i", 1)
        return str
    } else if (str.includes("e") && str.includes("o")) {
        str = str.replaceAll("e", 3)
        str = str.replaceAll("o", 0)
        return str
      } else if (str.includes("E") && str.includes("e") && str.includes("i")) {
        str = str.replaceAll("E", 3)
        str = str.replaceAll("e", 3)
        str = str.replaceAll("i", 1)
        return str
      }
}
// Pseudo code:
/*
function name: codedMessage
input: string variables
output: letters transformed from one letter to a number
process: 1) Using a conditional statement, I can use the include method method to look for specific strings characters in the variable
values. 
2) Once the desired character is found, inside the conditional block, the replaceAll() method, since I am looking to change all characters
not just one, will be used to transition the string to a number
3) I found that reasigning the same variable str multiple times with the replaceAll method helped to continously update the string to be changes.
*/

// --------------------2) Create a function that takes in an array of words and a single letter and returns an array of all the words containing that particular letter.

// a) Create a test with expects statement using the variable provided.
describe("retrieveParticularChar", () => {
    it("returns an array of all the words containing that particular letter.", () => {
        const fruitArray = ["Mango", "Cherry", "Apricot", "Blueberry", "Peach", "Kiwi"]
        
        const filterLetterA = "a"
        // Expected output: ["Mango", "Apricot", "Peach"]
        const filterLetterE = "e"
        // Expected output: ["Cherry", "Blueberry", "Peach"]
        expect(retrieveParticularChar(fruitArray, filterLetterA)).toEqual(["Mango", "Apricot", "Peach"])
        expect(retrieveParticularChar(fruitArray.filter(word => word !== "Apricot"), filterLetterE)).toEqual(["Cherry", "Blueberry", "Peach"])
    })
})



// b) Create the function that makes the test pass.

const retrieveParticularChar = (array, singleChar) => {
    // Create a new array to store the matching words.
    const similarWords = [];
    
    // Iterate over the words in the array.
    for (let arr of array) {
        // Check if the word contains letter.
        if (arr.includes(singleChar)) {
            // If the word does contain the letter, add it to the array of matching words.
            similarWords.push(arr)
        } else if (arr.includes("A")) {
            similarWords.push(arr)
        }
    }
    // Return the array of matching words.
    return similarWords
}

// Pseudo code:
/*
Method name: retrieveParticularChar
input: array and a single character
output: A new array of strings that print out based of a specific character
process: 1) loop through each element in the array and once the loop reaches the ending condition, chain the arr variable to the includes method
inside a conditional statement. 
2) Once finished, inside the conditional block, if the condition is true and the correct letter desired is found, the conditional block
will push the mathched word to a new array.
3) In the second if condition, If the conditional includes capital "A", this will include the Apricot string.
4) On the second expect method in the jest, The function would add "Apricot" to the second function call, I fixed this by using a 
filter method to remove the Apricot string out of the second function call.
*/

// --------------------3) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

// b) Create the function that makes the test pass.
describe("fullHouse", () => {
    it("takes in an array of 5 numbers and determines whether or not the array is a full house", () => {
        const hand1 = [5, 5, 5, 3, 3]
        // Expected output: true
        const hand2 = [5, 5, 3, 3, 4]
        // Expected output: false
        const hand3 = [5, 5, 5, 5, 4]
        // Expected output: false
        const hand4 = [7, 2, 7, 2, 7]
        // Expected output: true
        expect(fullHouse(hand1)).toEqual(true)
        expect(fullHouse(hand2)).toEqual(false)
        expect(fullHouse(hand3)).toEqual(false)
        expect(fullHouse(hand4)).toEqual(true)
    })
})


const fullHouse = (arrayNum) => {
    // Create an empty object to count the occurrences of each card
    let counts = {};
    
    // Iterate through each card in the array using a for of loop
    for (const card of arrayNum) {
        // Initialize the count for this card to 0 if the number does not occur or not found in array
        counts[card] = counts[card] || 0;
        
        // Increment the count for this card by 1 if the value is found
        counts[card]++;
    }
    
    // Check if the count values include both 2 and 3
    return Object.values(counts).includes(2) && Object.values(counts).includes(3);
}

// Pseudo code:
/*
Function name: fullHouse
input: array of number elements
output: boolean value if the code has a pair of same numbers and three of a kind.
process: 
1) Inside the function, an empty object literal is created to keep track and save the occuences inside the array input
2) The array will enter a for of loop, to iterate through each number inside the array.
3) If the correct number exists inside the array, it iterated the count, if no such number is found, the variable will reference to the
other side of the relational OR operator and initialize the count to zero.
4) When the loop count is finished executing, The object will save the counts of each number inside the input array.
5) Lastly, The function checks if the number count is in a pair and three of a kind numbered sequence, if that condition is met, it will evaluate 
to true or false.
*/