
int rows;
////
PFont textFont;
WordData[] wordFreq;
int counter = 0;

void setup() {
  size(200, 100); 
  textFont = createFont("AurulentSansMono-Regular", 20);
  smooth();

  // Load file and chop it up
  String[] lines = loadStrings("america.txt");
  String allText = join(lines, " ");
  String[] words = splitTokens(allText, " ,.?!:;[]-");
  ///
    //first function has to word frequency.
  // this should help improve efficiency by reducing the need to check EVERY word against the list of 10k
  rows = words.length;
  wordFreq = new WordData[rows];
   //should return a 2 dimensional object of form:
  //[[word1, frequency1], [word2, frequency2], ...]
  for (int i=0; i<words.length - 1; i++) {
    wordFreq[i++] =  new WordData(words[i], 1);
    i++;
    println(i);
  }
  println(wordFreq);
  
  
  textAlign(CENTER, CENTER);
}


void wordLength(String thisWord) {
  //one way to measure the jargon is to find statistics about word length  
  //average word length
  //median word length
  //maximum word length
  //minimum word length
}

void wordStats(String[] words) {

  //this should be a master function that actually loops through the individual words,
  // enters them into the functons, and collect all the various stats from each

//grab the wordFreq array of words and their frequencies and loop through it

}

void draw() {
  background(255);
}

//object for recording words and their frequency
class WordData {
  String wordText;
  int frequency;

  WordData(String w, int freq) {
    wordText = w;
    frequency = freq;
  }
}

