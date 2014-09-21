---
title       : BMI Calculator
subtitle    : Supporting Documentation
author      : Andrew Clinnin
job         : Student, Developing Data Products
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]     # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Background

According to the National Institute of Health, "Reaching and maintaining a healthy weight is important for overall health and can help you prevent and control many diseases and conditions."

Body Mass Index has long provided a way to conveniently measure an adult's weight-to-height ratio to determine if they fall into or outside of a healthy weight category.

# BMI Table

|BMI          |BMI'       |Description              |
|-------------|-----------|-------------------------|
|<15	        |<0.6	      |Very severely underweight|
|15.0 - 16.0	|0.6 - 0.64	|Severely underweight     |
|16.0 - 18.5	|0.64 - 0.74|Underweight              |
|18.5 - 25	  |0.74 - 1.0	|Healthy Weight           |
|25 - 30	    |1.0 - 1.2	|Overweight               |
|30 - 35	    |1.2 - 1.4	|Moderately Obese         |
|35 - 40	    |1.4 - 1.6	|Severely Obese           |
|>40	        |> 1.6	    |Very Severely Obese      |

---

## Concepts

Body Mass Index (BMI) is simply the ratio of weight to height squared. Originally calculated in metric, a multiplier is used to convert to imperial units and accomodate inches and pounds. 
$$latex
BMI = \frac{Weight}{Height^2}*703.06957964
$$

BMI Prime (BMI') is a unit-free ratio of BMI to the maximum healthy BMI(25.) This can also be expressed as the ratio of actual weight to weight for a given height at BMI of 25. This gives the percent over or under max ideal weight. (e.g. BMI' 1.08 = 8% overweight)

$$latex
BMI' = \frac{BMI(Actual)}{BMI(Max Healthy)} = \frac{Weight(Actual)}{Weight(BMI 25)}
$$


---

## Notes

- Weight entered must be in pounds, and hight entered must be in total inches. A helpful point of reference is that 5 feet = 60 inches, so if you are 5 feet 8 inches tall, this is 68 inches.
- The BMI calculation is intended for people over 20 years of age. 
- Some physical conditions, including people with extreme heights or muscle mass, may lead to incorrect assessment of weight category with this tool. If you have questions or concerns about your health and/or weight, you should consult a physician.
- For more information: http://www.nhlbi.nih.gov/health/educational/lose_wt/index.htm
