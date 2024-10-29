INSERT INTO Classes 
	(ClassName, Description)
VALUES 
	('Class 1', 'Students learn basic mathematical concepts such as numbers and operations. They become familiar with numbers up to 20, practicing addition and subtraction, recognizing shapes, and comparing lengths and volumes. The lessons are enriched with games and fun math activities.'),
	('Class 2', 'In this grade, students develop their addition and subtraction skills up to 100 and begin learning multiplication and division. They also learn about time, money, and basic measurements of length. Students are taught to solve simple math problems and apply math in everyday life.'),
	('Class 3', 'Students deepen their knowledge of multiplication and division up to 1000. They learn about fractions, geometric shapes, and the basic properties of figures. Concepts such as symmetry and perimeter are introduced, along with skills in collecting and analyzing data.'),
	('Class 4', 'Students learn about different types of fractions, including proper and improper fractions and decimals. They develop geometric skills by exploring basic shapes and their properties. The introduction of simple equations and algebraic expressions presents new challenges.'),
	('Class 5', 'Students learn to solve equations and perform operations on algebraic expressions. They are introduced to concepts related to statistics, such as mean, median, and mode. Topics related to percentages are also covered, preparing them for more complex concepts in the future.'),
	('Class 6', 'In this grade, students develop skills for solving equations with one variable and work on concepts of ratios and reciprocals. They learn about three-dimensional figures and their volumes, as well as tackle more complex geometric problems.'),
	('Class 7', 'Students learn more advanced algebra, including linear and quadratic functions. They develop skills in data analysis and discover various methods for solving mathematical problems. The introduction of trigonometry and basic concepts related to angles and radii also takes place in this grade.'),
	('Class 8', 'Students completing elementary school have the opportunity to integrate their acquired knowledge. In this grade, topics such as functions, quadratic equations, and more advanced concepts in statistics and probability are discussed. Preparation for the final exam includes both practical and theoretical tasks to ensure a solid understanding of mathematics at the high school level.')
;

INSERT INTO Topics 
	(ClassId, TopicName, Description)
VALUES
	(1, 'Introduction to Numbers', 'Students learn about natural numbers and their application in everyday life. They learn to count and recognize numbers in various contexts.'),
	(1, 'Addition and Subtraction', 'An introduction to basic arithmetic operations; students learn to add and subtract numbers up to 20.'),
	(1, 'Shapes and Figures', 'Students recognize basic shapes such as circles, squares, and triangles, and learn about their properties.'),
	(1, 'Comparing Lengths and Volumes', 'Students learn how to compare objects by length and volume using basic measuring tools.'),

	(2, 'Addition and Subtraction up to 100', 'Students develop their addition and subtraction skills by performing calculations up to 100.'),
	(2, 'Multiplication and Division', 'An introduction to multiplication as the inverse of division. Students learn to multiply and divide numbers in a straightforward manner.'),
	(2, 'Time and Money', 'Students learn to read clocks and recognize coins and banknotes. The lessons include calculations related to money.'),
	(2, 'Basic Length Measurements', 'Students learn about different units of length and their practical applications.'),

	(3, 'Multiplication and Division up to 1000', 'Students deepen their skills in multiplication and division, expanding the range of calculations up to 1000.'),
	(3, 'Fractions', 'An introduction to fractions; students learn about proper and improper fractions and their applications.'),
	(3, 'Geometry: Basic Shapes', 'Students learn about basic geometric shapes and their properties, practicing how to draw and classify them.'),
	(3, 'Collecting and Analyzing Data', 'Students learn how to collect data, create simple graphs, and interpret results.'),

	(4, 'Fractions: Proper and Improper', 'Students learn how to recognize and operate on proper and improper fractions.'),
	(4, 'Perimeter and Area of Shapes', 'An introduction to the concepts of perimeter and area; students learn how to calculate these values for basic geometric shapes.'),
	(4, 'Equations and Algebraic Expressions', 'Students learn basic equations and algebraic expressions, introducing concepts of variables and constants.'),
	(4, 'Symmetry and Lines of Symmetry', 'Students learn about the concept of symmetry, how to draw symmetrical figures, and recognize lines of symmetry.'),

	(5, 'Solving Equations', 'Students learn how to solve simple equations with one unknown.'),
	(5, 'Statistics: Mean, Median, and Mode', 'An introduction to basic statistical concepts; students learn how to calculate the mean, median, and mode.'),
	(5, 'Percentages', 'Students learn the concept of percentages and how to calculate percentage values in various contexts.'),
	(5, 'Word Problems', 'Students learn how to solve word problems by applying various mathematical strategies.'),

	(6, 'Equations with One Unknown', 'Students develop skills in solving equations with one unknown, learning various solving methods.'),
	(6, 'Ratios and Inverses', 'An introduction to the concepts of ratios and inverses; students learn to apply these concepts in various problems.'),
	(6, 'Three-Dimensional Shapes and Their Volumes', 'Students learn about different three-dimensional shapes and how to calculate their volumes.'),
	(6, 'Application of Mathematics in Everyday Life', 'Students learn how to apply mathematics in everyday situations, such as budgeting or calculating distances.'),

	(7, 'Linear Functions', 'Students learn what linear functions are and how to represent them graphically.'),
	(7, 'Quadratic Equations', 'An introduction to quadratic equations; students learn to solve them using various methods.'),
	(7, 'Basics of Trigonometry', 'Students learn basic concepts of trigonometry, such as angles and trigonometric functions'),
	(7, 'Data Analysis', 'Students learn how to analyze data and interpret results using various analysis methods.'),

	(8, 'Advanced Functions', 'Students deepen their knowledge of different types of functions, including quadratic and exponential functions.'),
	(8, 'Solving Complex Equations', 'Students learn to solve more complex equations using various strategies.'),
	(8, 'Statistics and Probability', 'Students learn about the concepts of probability and methods of statistical analysis.'),
	(8, 'Exam Preparation', 'Students have the opportunity to review all topics covered throughout their studies, with an emphasis on skills needed to pass the final exam.')
;

INSERT INTO Exercises
    (TopicId, ExerciseText, CorrectAnswer, SolutionExplanation)
VALUES
    -- Class 1: Mathematics in the World Around Us
    (1, 'Count the number of apples in a basket. Write down the number.', '5', 'If there are 5 apples in the basket, write "5".'),
    (1, 'Identify and write the numbers you see on house numbers around your neighborhood.', '12, 34, 56', 'Look at house numbers as you walk and write them down.'),
    
    (2, 'Calculate: 45 + 23 = ?', '68', 'Add the numbers together: 45 + 23 = 68.'),
    (2, 'If you have 100 stickers and you give away 47, how many do you have left?', '53', 'Subtract the stickers given away from the total: 100 - 47 = 53.'),
    
    (3, 'What is 4 × 6?', '24', 'Multiply the numbers: 4 × 6 = 24.'),
    (3, 'If you divide 24 cookies among 6 friends, how many cookies does each friend get?', '4', 'Divide the total cookies by the number of friends: 24 ÷ 6 = 4.'),
    
    (4, 'If the clock shows 3:15, what time will it be in 30 minutes?', '3:45', 'Add 30 minutes to the current time: 3:15 + 30 minutes = 3:45.'),
    (4, 'You have 3 quarters, 2 dimes, and 4 pennies. How much money do you have in total?', '$0.99', 'Calculate the total value: (3 × 0.25) + (2 × 0.10) + (4 × 0.01) = 0.75 + 0.20 + 0.04 = 0.99.'),

    -- Class 2: Introduction to Arithmetic
    (5, 'What is 78 + 29?', '107', 'Add the two numbers: 78 + 29 = 107.'),
    (5, 'Subtract 58 from 112. What is the result?', '54', 'Perform the subtraction: 112 - 58 = 54.'),

    (6, 'What is 7 × 8?', '56', 'Multiply the numbers: 7 × 8 = 56.'),
    (6, 'If you divide 48 by 6, what do you get?', '8', 'Perform the division: 48 ÷ 6 = 8.'),

    (7, 'If you spend $40 and have $10 left, how much did you start with?', '$50', 'Add the amount spent to what is left: 40 + 10 = 50.'),
    (7, 'Calculate the area of a rectangle with length 5 cm and width 3 cm.', '15 cm?', 'Area = Length × Width = 5 × 3 = 15 cm?.'),

    (8, 'If you read 20 pages on Monday and 30 pages on Tuesday, how many pages did you read in total?', '50', 'Add the pages: 20 + 30 = 50.'),
    (8, 'You have 2 dollars and want to buy candy that costs 50 cents each. How many can you buy?', '4', 'Convert dollars to cents: 2 dollars = 200 cents. Then, 200 ÷ 50 = 4.'),

    -- Class 3: Developing Arithmetic Skills
    (9, 'What is 150 - 76?', '74', 'Perform the subtraction: 150 - 76 = 74.'),
    (9, 'Multiply 12 by 9. What is the answer?', '108', 'Calculate: 12 × 9 = 108.'),

    (10, 'What fraction is 3 out of 8?', '3/8', 'Express the eaten pieces as a fraction of the total.'),
    (10, 'If you have 4/5 of a cake and eat 1/5, how much is left?', '3/5', 'Subtract the fraction eaten from the total: 4/5 - 1/5 = 3/5.'),

    (11, 'If a pencil costs $2 and you buy 3, how much do you spend?', '$6', 'Multiply the price by the quantity: 2 × 3 = 6.'),
    (11, 'How many hours are there in 3 days?', '72', 'Calculate: 3 days × 24 hours/day = 72 hours.'),

    (12, 'A rectangle has a length of 10 cm and a width of 4 cm. What is its perimeter?', '28 cm', 'Perimeter = 2 × (Length + Width) = 2 × (10 + 4) = 28 cm.'),
    (12, 'If a train travels 60 km/h for 3 hours, how far does it go?', '180 km', 'Distance = Speed × Time = 60 × 3 = 180 km.'),

    -- Class 4: Basics of Geometry and Fractions
    (13, 'What is the area of a triangle with a base of 8 cm and a height of 5 cm?', '20 cm?', 'Area = (Base × Height) ÷ 2 = (8 × 5) ÷ 2 = 20 cm?.'),
    (13, 'If you cut a pizza into 8 equal slices and eat 3, what fraction is left?', '5/8', 'Total slices = 8, eaten = 3; left = 8 - 3 = 5, which is 5/8.'),

    (14, 'What is the perimeter of a square with a side length of 6 cm?', '24 cm', 'Perimeter = 4 × Side = 4 × 6 = 24 cm.'),
    (14, 'Calculate the volume of a cube with side length 3 cm.', '27 cm?', 'Volume = Side? = 3 × 3 × 3 = 27 cm?.'),

    (15, 'Draw a line of symmetry for an equilateral triangle.', 'Line drawn from vertex to opposite side.', 'An equilateral triangle has three lines of symmetry.'),
    (15, 'If you have a shape with 4 equal sides, what is it called?', 'A square.', 'A shape with four equal sides is a square.'),

    (16, 'If a right triangle has one leg of 3 cm and another leg of 4 cm, what is the hypotenuse?', '5 cm', 'Use Pythagoras theorem: Hypotenuse? = 3? + 4? = 9 + 16 = 25, Hypotenuse = ?25 = 5 cm.'),
    (16, 'How many degrees are in a right angle?', '90 degrees', 'A right angle is defined as 90 degrees.'),

    -- Class 5: Algebra and Statistics
    (17, 'Solve for x: 2x + 3 = 11.', 'x = 4', 'Isolate x: 2x = 11 - 3 = 8, then x = 8/2 = 4.'),
    (17, 'If 5 + y = 15, what is the value of y?', 'y = 10', 'Subtract 5 from both sides: y = 15 - 5 = 10.'),

    (18, 'What is the mean of the numbers 4, 8, 6, 5, 3?', '5.2', 'Add the numbers: 4 + 8 + 6 + 5 + 3 = 26, then divide by 5: 26 ÷ 5 = 5.2.'),
    (18, 'Find the mode of the following set of numbers: 1, 2, 2, 3, 4, 4, 4, 5.', '4', 'The number that appears most frequently is 4.'),

    (19, 'If a shirt costs $40 and is on sale for 20% off, what is the sale price?', '$32', 'Calculate the discount: 20% of 40 = 8, then $40 - $8 = $32.'),
    (19, 'If you earn $150 a week, how much do you earn in 4 weeks?', '$600', 'Multiply the weekly earnings: 150 × 4 = 600.'),

    (20, 'What is 25% of 200?', '50', 'Calculate 25%: 200 × 0.25 = 50.'),
    (20, 'If a class has 30 students and 15 are boys, what fraction of the class are boys?', '1/2', 'Fraction = Boys/Total = 15/30 = 1/2.'),

    -- Class 6: Advanced Geometry and Algebra
    (21, 'Solve for x: 3x - 5 = 10.', 'x = 5', 'Add 5 to both sides: 3x = 15, then x = 15/3 = 5.'),
    (21, 'What is the area of a circle with a radius of 3 cm?', '28.26 cm?', 'Area = ?r? = 3.14 × (3)? ? 28.26 cm?.'),

    (22, 'If you roll a die, what is the probability of rolling a 3?', '1/6', 'There is 1 way to roll a 3 out of 6 possible outcomes.'),
    (22, 'If you flip a coin, what is the probability of getting heads?', '1/2', 'There are 2 outcomes (heads or tails), and 1 is favorable for heads.'),

    (23, 'If the angles in a triangle are 60°, 60°, and 60°, what type of triangle is it?', 'Equilateral', 'All angles are equal, so the triangle is equilateral.'),
    (23, 'What is the sum of angles in a triangle?', '180 degrees', 'The sum of the angles in any triangle is always 180 degrees.'),

    (24, 'What is the slope of a line through the points (2, 3) and (4, 7)?', '2', 'Slope = (y2 - y1) / (x2 - x1) = (7 - 3) / (4 - 2) = 4/2 = 2.'),
    (24, 'What is the equation of a line with a slope of 2 and y-intercept of 1?', 'y = 2x + 1', 'Equation format is y = mx + b, where m is the slope and b is y-intercept.'),

    -- Class 7: Measurements and Units
    (25, 'Convert 2 meters to centimeters.', '200 cm', 'Multiply by 100: 2 × 100 = 200 cm.'),
    (25, 'How many grams are in 2.5 kg?', '2500 g', 'Multiply by 1000: 2.5 × 1000 = 2500 g.'),

    (26, 'How many liters are in 1500 milliliters?', '1.5 L', 'Convert by dividing by 1000: 1500 ÷ 1000 = 1.5 L.'),
    (26, 'What is the perimeter of a rectangle that is 5 m long and 3 m wide?', '16 m', 'Perimeter = 2 × (Length + Width) = 2 × (5 + 3) = 16 m.'),

    (27, 'If a car travels at 60 km/h, how far does it travel in 2 hours?', '120 km', 'Distance = Speed × Time = 60 × 2 = 120 km.'),
    (27, 'If a recipe needs 2 cups of flour and you have 500 g, how many cups is that?', '2.08 cups', 'Convert grams to cups: 500 g ÷ 240 g/cup ? 2.08 cups.'),

    (28, 'If you run 5 km every day for 7 days, how many kilometers do you run in total?', '35 km', 'Multiply daily distance by number of days: 5 × 7 = 35 km.'),
    (28, 'If a bottle holds 1.5 liters, how many milliliters is that?', '1500 ml', 'Convert liters to milliliters: 1.5 × 1000 = 1500 ml.'),

    -- Class 8: Patterns and Data
    (29, 'Identify the pattern in the sequence: 2, 4, 6, 8. What comes next?', '10', 'The pattern adds 2 each time: 8 + 2 = 10.'),
    (29, 'If you have 1, 3, 5, 7. What number comes next in the pattern?', '9', 'The pattern adds 2 each time: 7 + 2 = 9.'),

    (30, 'A bar graph shows 4, 7, 3, and 5. What is the mode?', '7', 'The mode is the number that appears most often: 7 is the highest.'),
    (30, 'What is the median of the set: 3, 1, 2, 4, 5?', '3', 'Sort the numbers: 1, 2, 3, 4, 5. The median is the middle number: 3.'),

    (31, 'If a bag contains 2 red, 3 blue, and 5 green balls, what fraction of the balls are red?', '1/5', 'Total balls = 2 + 3 + 5 = 10, so red = 2/10 = 1/5.'),
    (31, 'What is the probability of drawing a blue ball from the same bag?', '3/10', 'There are 3 blue balls out of 10 total, so the probability is 3/10.'),

    (32, 'If a spinner has 4 equal sections and one section is red, what is the probability of landing on red?', '1/4', 'There is 1 red section out of 4 total sections, so 1/4.'),
    (32, 'If you flip a coin twice, what is the probability of getting two heads?', '1/4', 'There are 4 outcomes: HH, HT, TH, TT; only 1 is heads, so 1/4.')
;
