/*
Description: The current program counts the words of string 'text'
Usage: chpl -o word_count word_count.chpl
       ./word_count [--text="your text"]
Author: Antonios-Kyrillos Chatzimichail
Date: April 4, 2021
*/

use Map;

/*The text to count its words*/
config const text = "hi there hi bye";

proc main(){
    /*A map where a key is a word and the value is that word's counter*/
    var wordMap = new map(string, int);
    
    /*Iterating words by spliting 'text' (using whitespace as delimiter)*/
    for word in text.split(){
        /*Try to add new word with counter 1*/
        if(!wordMap.add(word, 1)){
            /*If word already exists, increase its counter by 1*/
            wordMap.set(word, wordMap.getValue(word) + 1);
        }
    }
    
    writeln(wordMap);
}
