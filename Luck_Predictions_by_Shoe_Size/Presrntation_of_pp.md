Presrntation of application "Lick predictions by shoe size"
========================================================
author: Natalia Kuraeva
date: 01.07.2021
autosize: true

Important Information
========================================================
Warning! 
- The application generates predictions not based on any scientific data.
- Fortune telling by shoe size is on a par with activities such as tarot cards, divination by runes and the Chinese Book of Changes - I CHING.
- The application was created with the aim of mastering the skills of writing applications using the Shiny library, please take it as a joke.

what data the application uses
========================================================
How to use: 
To get a prediction, you need to select the appropriate options from those offered on the panels on the left and click the button 'Start magical actions'
The formula uses:
- shoe size, (selectable) in values from 0 to 50 with a step of 0.5
- any random number in values from 0 to 100 with a step of 100
- user gender (selected from the proposed options), is transformed on the server into a number of values 1, 2 or 3.

What formulas for calculation does the application use?
========================================================


```r
#for example, a user can indicate that he is a man with a shoe size of 10.5 and he likes the number 39.
genderNum = 1
Number = 39
Shoe = 10.5

# calculate the number of output
x <- genderNum * Number - Shoe * 2
AnsNum <- ifelse(x>0, x, x+100) # and adjust the number if the calculated value turned out to be negative
```

What the application output looks like
========================================================



```r
# we select the answer from their list by the calculated number (this is a list of predictions invested in Chinese cookies, taken from the website of the cookie manufacturer)
"A person of words and not deeds is like a garden full of weeds."
```

```
[1] "A person of words and not deeds is like a garden full of weeds."
```
