//
//  SecondViewController.swift
//  hangMAN
//
//  Created by Brandon Escobar on 12/2/19.
//  Copyright © 2019 Brandon Escobar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    /*images that tell a story
     a fisherman needs to finish the word before the shark eats him
     */
    @IBOutlet weak var fishOne: UIImageView!
    @IBOutlet weak var fishTwo: UIImageView!
    @IBOutlet weak var fishThree: UIImageView!
    @IBOutlet weak var fishFour: UIImageView!
    @IBOutlet weak var human: UIImageView!
    @IBOutlet weak var shark: UIImageView!
    @IBOutlet weak var endDisplay: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var textBox: UILabel!
    @IBOutlet weak var keyboard: UIView!
    //letters on the key board
    @IBOutlet weak var boxA: KeyBoard!
    @IBOutlet weak var boxB: KeyBoard!
    @IBOutlet weak var boxC: KeyBoard!
    @IBOutlet weak var boxD: KeyBoard!
    @IBOutlet weak var boxE: KeyBoard!
    @IBOutlet weak var boxF: KeyBoard!
    @IBOutlet weak var boxG: KeyBoard!
    @IBOutlet weak var boxH: KeyBoard!
    @IBOutlet weak var boxI: KeyBoard!
    @IBOutlet weak var boxJ: KeyBoard!
    @IBOutlet weak var boxK: KeyBoard!
    @IBOutlet weak var boxL: KeyBoard!
    @IBOutlet weak var boxM: KeyBoard!
    @IBOutlet weak var boxN: KeyBoard!
    @IBOutlet weak var boxO: KeyBoard!
    @IBOutlet weak var boxP: KeyBoard!
    @IBOutlet weak var boxQ: KeyBoard!
    @IBOutlet weak var boxR: KeyBoard!
    @IBOutlet weak var boxS: KeyBoard!
    @IBOutlet weak var boxT: KeyBoard!
    @IBOutlet weak var boxU: KeyBoard!
    @IBOutlet weak var boxV: KeyBoard!
    @IBOutlet weak var boxW: KeyBoard!
    @IBOutlet weak var boxX: KeyBoard!
    @IBOutlet weak var boxY: KeyBoard!
    @IBOutlet weak var boxZ: KeyBoard!
    /*If the player gets a word wrong,
     then it would drop down to the bottom being declared wrong
     */
    @IBOutlet weak var usedWordOne: GuessWords!
    @IBOutlet weak var usedWordTwo: GuessWords!
    @IBOutlet weak var usedWordThree: GuessWords!
    @IBOutlet weak var usedWordFour: GuessWords!
    @IBOutlet weak var usedWordFive: GuessWords!
    ///
    var tempChosen = ""// A temporary string to bring your incorrect guess to the bottom
    var guesses = 5// How many guesses you have
    var gameDone = false// Checks
    var gameCount = 0
    var noRepeatsOne = Int.random(in: 0 ..< 41)
    var noRepeatsTwo = Int.random(in: 0 ..< 41)
    var noRepeatsThree = Int.random(in: 0 ..< 41)
    var noRepeatsFour = Int.random(in: 0 ..< 41)
    var noRepeatsFive = Int.random(in: 0 ..< 41)
    var noRepeatsSix = Int.random(in: 0 ..< 41)
    var noRepeatsSeven = Int.random(in: 0 ..< 41)
    var noRepeatsEight = Int.random(in: 0 ..< 41)
    var noRepeatsNine = Int.random(in: 0 ..< 41)
    var noRepeatsTen = Int.random(in: 0 ..< 41)
    var noRepeatsEleven = Int.random(in: 0 ..< 41)
    var arrayKeyBoard = [KeyBoard]()
    var usedKeys = [GuessWords]()
    var hiddenWord = [String]()
    var randomWord = [String]()
    var randomWordZero = ["G","U","E","S","S"," ","T","H","E"," ","W","O","R","D"]
    var randomWordOne = ["F","U","N","N","Y"]
    var randomWordTwo = ["C","A","T","S"," ","A","N","D"," ","D","O","G","S"]
    var randomWordThree = ["X","C","O","D","E"]
    var randomWordFour = ["M","A","P"]
    var randomWordFive = ["B","E","A","C","H"]
    var randomWordSix = ["A","I","R","P","L","A","N","E"]
    var randomWordSeven = ["T","R","O","P","I","C","S"]
    var randomWordEight = ["B","R","A","N","D","O","N"]/// Brandon Escobar 3rd
    var randomWordNine = ["N","O"]
    var randomWordTen = ["K","I","R","B","Y"]
    var randomWordEleven = ["P","E","N","C","I","L"]
    var randomWordTwelve = ["E","L","E","P","H","A","N","T"]
    var randomWordThirteen = ["R","O","B","O","T"]
    var randomWordFourteen = ["F","O","R","W","A","R","D"," ","A","E","R","I","A","L"]
    var randomWordFifteen = ["D","E","R","I","V","A","T","I","V","E"]
    var randomWordSixteen = ["D","E","L","E","T","E"," ","T","H","I","S"]
    var randomWordSeventeen = ["M","E","M","E","S"]
    var randomWordEighteen = ["S","H","A","R","K"]
    var randomWordNineteen = ["T","A","S","T","Y"]
    var randomWordTwenty = ["B","O","Y"]
    var randomWordTwentyOne = ["S","A","P","L","I","N","G"]
    var randomWordTwentyTwo = ["B","O","I"]
    var randomWordTwentyThree = ["B","R","U","H"]
    var randomWordTwentyFour = ["S","K","U","L","L"]
    var randomWordTwentyFive = ["B","R","A","I","N"]
    var randomWordTwentySix = ["T","R","U","M","P","E","T"]
    var randomWordTwentySeven = ["W","O","A","H"]
    var randomWordTwentyEight = ["T","H","E"," ","M","U","P","P","E","T","S"]
    var randomWordTwentyNine = ["B","I","G"," ","C","H","U","N","G","U","S"]
    var randomWordThirty = ["D","A","N","T","D","M"]
    var randomWordThirtyOne = ["S","P","O","N","G","E"," ","B","O","B"]
    var randomWordThirtyTwo = ["M","I","C","K","E","Y"," ","M","O","U","S","E"]
    var randomWordThirtyThree = ["S","A","N","S"]
    var randomWordThirtyFour = ["P","A","P","Y","R","U","S"]
    var randomWordThirtyFive = ["F","I","N","A","L","S"]
    var randomWordThirtySix = ["H","A","U","N","T","E","D"," ","H","O","U","S","E"]
    var randomWordThirtySeven = ["T","R","U","E"," ","G","A","M","E","R"]
    var randomWordThirtyEight = ["F","R","U","I","T"," ","S","M","O","O","T","H","I","E"]
    var randomWordThirtyNine = ["M","A","R","K","I","P","L","I","E","R"]
    var randomWordForty = ["M","E","G","L","O","V","A","N","I","A"]
    var alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M",
                    "N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayKeyBoard.append(boxA)
        arrayKeyBoard.append(boxB)
        arrayKeyBoard.append(boxC)
        arrayKeyBoard.append(boxD)
        arrayKeyBoard.append(boxE)
        arrayKeyBoard.append(boxF)
        arrayKeyBoard.append(boxG)
        arrayKeyBoard.append(boxH)
        arrayKeyBoard.append(boxI)
        arrayKeyBoard.append(boxJ)
        arrayKeyBoard.append(boxK)
        arrayKeyBoard.append(boxL)
        arrayKeyBoard.append(boxM)
        arrayKeyBoard.append(boxN)
        arrayKeyBoard.append(boxO)
        arrayKeyBoard.append(boxP)
        arrayKeyBoard.append(boxQ)
        arrayKeyBoard.append(boxR)
        arrayKeyBoard.append(boxS)
        arrayKeyBoard.append(boxT)
        arrayKeyBoard.append(boxU)
        arrayKeyBoard.append(boxV)
        arrayKeyBoard.append(boxW)
        arrayKeyBoard.append(boxX)
        arrayKeyBoard.append(boxY)
        arrayKeyBoard.append(boxZ)
        usedKeys.append(usedWordOne)
        usedKeys.append(usedWordTwo)
        usedKeys.append(usedWordThree)
        usedKeys.append(usedWordFour)
        usedKeys.append(usedWordFive)
        randomWordPull()
    }
    
    func randomWordPull() {
        var temp = [String]()// Temporary array to put into Random array
        var number = Int.random(in: 0 ..< 41)// Makes random number
        if number == noRepeatsOne || number == noRepeatsTwo || number == noRepeatsThree || number == noRepeatsFour || number == noRepeatsFive || number == noRepeatsSix || number == noRepeatsSeven || number == noRepeatsEight || number == noRepeatsNine || number == noRepeatsTen || number == noRepeatsEleven {
            number = Int.random(in: 0 ..< 41)
        }
        if number == 0{// That random number would convert into an array
            temp = randomWordZero
        } else if number == 1 {
            temp = randomWordOne
        } else if number == 2 {
            temp = randomWordTwo
        } else if number == 3 {
            temp = randomWordThree
        } else if number == 4 {
            temp = randomWordFour
        } else if number == 5 {
            temp = randomWordFive
        } else if number == 6 {
            temp = randomWordSix
        } else if number == 7 {
            temp = randomWordSeven
        } else if number == 8 {
            temp = randomWordEight
        } else if number == 9 {
            temp = randomWordNine
        } else if number == 10 {
            temp = randomWordTen
        } else if number == 11 {
            temp = randomWordEleven
        } else if number == 12 {
            temp = randomWordTwelve
        } else if number == 13 {
            temp = randomWordThirteen
        } else if number == 14 {
            temp = randomWordFourteen
        } else if number == 15 {
            temp = randomWordFifteen
        } else if number == 16 {
            temp = randomWordSixteen
        } else if number == 17 {
            temp = randomWordSeventeen
        } else if number == 18 {
            temp = randomWordEighteen
        } else if number == 19 {
            temp = randomWordNineteen
        } else if number == 20 {
            temp = randomWordTwenty
        } else if number == 21 {
            temp = randomWordTwentyOne
        } else if number == 22 {
            temp = randomWordTwentyTwo
        } else if number == 23 {
            temp = randomWordTwentyThree//////////////
        } else if number == 24 {
            temp = randomWordTwentyFour
        } else if number == 25 {
            temp = randomWordTwentyFive
        } else if number == 26 {
            temp = randomWordTwentySix
        } else if number == 27 {
            temp = randomWordTwentySeven
        } else if number == 28 {
            temp = randomWordTwentyEight
        } else if number == 29 {
            temp = randomWordTwentyNine
        } else if number == 30 {
            temp = randomWordThirty
        } else if number == 31 {
            temp = randomWordThirtyOne
        } else if number == 32 {
            temp = randomWordThirtyTwo
        } else if number == 33 {
            temp = randomWordThirtyThree
        } else if number == 34 {
            temp = randomWordThirtyFour
        } else if number == 35 {
            temp = randomWordThirtyFive
        } else if number == 36 {
            temp = randomWordThirtySix
        } else if number == 37 {
            temp = randomWordThirtySeven
        } else if number == 38 {
            temp = randomWordThirtyEight
        } else if number == 39 {
            temp = randomWordThirtyNine
        } else if number == 40 {
            temp = randomWordForty
        } else if number == 41 {
            temp = alphabet/// Just in case something went wrong
        }
        noRepeatsEleven = noRepeatsTen
        noRepeatsTen = noRepeatsNine
        noRepeatsNine = noRepeatsEight
        noRepeatsEight = noRepeatsSeven
        noRepeatsSeven = noRepeatsSix
        noRepeatsSix = noRepeatsFive
        noRepeatsFive = noRepeatsFour
        noRepeatsFour = noRepeatsThree
        noRepeatsThree = noRepeatsTwo
        noRepeatsTwo = noRepeatsOne
        noRepeatsOne = number
        randomWord.removeAll()/// Clear the word if from last game
        randomWord.append(contentsOf: temp)// Put the random array in game
        hiddenWord.removeAll()/// Clear the word if from last game
        var string = ""
        for letter in randomWord {// Create the dashes to show the amount of missing letters
            if letter == " "{
                hiddenWord.append(" ")
                string += " "/// Add "-"'s in string
            }
            else {
                hiddenWord.append("-")/// Add "-"'s in array
                string += "-"/// Add "-"'s in string
            }
            /// See how many letters are in the hidden word
        }
        textBox.text = string// Put the hidden word into the label
    }
    
    @IBAction func onTappedKeyboard(sender: UITapGestureRecognizer) {
        var count = 0// Count is used to place where the next letter is used
        var right = false/// Checks if guess is correct
        var tempString = ""/// A temporary string to carry
        for letter in arrayKeyBoard{/// Go through the whole keyboard array
            if letter.canTap && letter.frame.contains(sender.location(in: keyboard)) {
                for answer in randomWord {/// Go through the randomized array
                    if answer.contains(Character(letter.text!)) {//checks if answer is correct
                        hiddenWord[count] = letter.text!/// Set answer to correct positions
                        right = true/// Cofirm correct
                    }
                    count += 1/// Add one for the next element in array
                }
                if !right{// check if the player got the answer correct
                    tempChosen = letter.text!/// take choosen letter
                    takeToGuess()/// bing the letter down to used guesses
                    if guesses == 5 {
                        fishOne.isHidden = true/// Kill First fish
                    } else if guesses == 4 {
                        fishTwo.isHidden = true/// Kill Second fish
                    } else if guesses == 3 {
                        fishThree.isHidden = true/// Kill Third fish
                    } else if guesses == 2 {
                        fishFour.isHidden = true/// Kill Last fish
                    } else {
                        human.isHidden = true/// Kill human
                        gameOver()///Confirm game over
                    }
                    guesses -= 1// Lose a guess
                }
                textBox.text = ""// Clean out the label
                for letter in hiddenWord {// Put elements from the array(from left to right) into a string
                    tempString += letter// Put one element at a time into a tempoary string
                }
                textBox.text = tempString// Set the
                letter.text = ""// Blank out the letter
                letter.canTap = false// unallow to be tapped again
                var chickenDinner = 0// Counts if any dashes in hiddenWord array
                for letter in hiddenWord {// Go through array
                    if letter == "-" {// Checks if array contains "-"
                        chickenDinner += 1// Add if there's still "-"
                    }
                }
                if chickenDinner == 0 {// Check if no "-"s
                    winner()// Confirm winner
                }
            }
        }
        right = false// reset correct chrecking system
        count = 0// reset counter
    }
    
    func takeToGuess() {// The function takes the incorrect guess to the guess boxes
        for letter in usedKeys{// Goes to empty box
            if letter.text! == "" {// Checks if box is empty
                letter.text! = tempChosen// Puts guess in box
                break// Stop to prevent putting the guess in every box
            }
        }
    }
    
    func winner() {// Confirm Winner Winner Chicken Dinner
        for letter in arrayKeyBoard {/// Clean out key board
            ///letter.text = ""/// Empty out the box
            letter.canTap = false/// Make it unable to tap
        }
        if !gameDone {// Check if the game is finished incase gameOver() already confirmed
            endDisplay.textColor = .green/// Set the display label to green
            endDisplay.text = "WINNER"/// Display winner to the player
            resetButton.setTitleColor(.white, for: .normal)/// Make the button appear
            gameDone = true/// Confirm the game to be complete
            shark.isHidden = true/// Make shark go away
        }
    }
    
    func gameOver() {// Confirm Game Over
        for letter in arrayKeyBoard {/// Clean out key board
            ///letter.text = ""/// Empty out the box
            letter.canTap = false/// Make it unable to tap
        }
        endDisplay.textColor = .red/// Set the display label to red
        endDisplay.text = "GAME OVER"/// Display loser to the player
        resetButton.setTitleColor(.white, for: .normal)/// Make the button appear
        gameDone = true/// Confirm the game to be complete
        var count = 0/// Used to count the arrays in hidden word
        var tempString = ""/// Temporary string to hold the hidden word
        for letter in hiddenWord {// For Loop to display the hidden word
            hiddenWord[count] = randomWord[count]/// Set the element from randomWord to hiddenWord
            count += 1/// Add one for the next round
            tempString += letter/// Put the hiddenWord[count] into the temporary string holder
        }
        textBox.text = tempString// Reveal the hidden word
    }
    
    @IBAction func reset(_ sender: Any) {// The button makes a new game by reseting all the code
        if gameDone{/// Check if the game is done
            randomWordPull()/// Clear out both hiddenWord and randomWord then pull out a new word
            fixKeyboard()/// Reset everything in the game
        }
        gameDone = false/// Reset gameDone to false to prevent reseting during game
    }
    
    func fixKeyboard(){// Reset everything in the game
        gameCount += 1
        fishOne.isHidden = false/// Bring the fish back to life
        fishTwo.isHidden = false/// Bring the fish back to life
        fishThree.isHidden = false/// Bring the fish back to life
        fishFour.isHidden = false/// Bring the fish back to life
        human.isHidden = false/// Bring the human back to life
        shark.isHidden = false/// Bring the shark back
        endDisplay.textColor = .black/// Hide the display
        resetButton.setTitleColor(.black, for: .normal)/// Hide the button
        guesses = 5/// Reset the amount of guesses
        var count = 0/// Temporary counter for resenting the keyboard
        for letter in arrayKeyBoard{// For loop to reset keyboard
            if letter.text! == "" {/// Check if the box is empty
                letter.text! = alphabet[count]/// Set the element from alphabet into the box\
            }
            letter.canTap = true/// Confirm that the box is tapable
            count += 1/// Add one for the next element
        }
        for letter in usedKeys {// Clean out the guess boxes
            letter.text! = ""/// Clear out the box
        }
    }
}
