-- Created Classes table
CREATE TABLE Classes (
    ClassId INT PRIMARY KEY IDENTITY,
    ClassName NVARCHAR(20) NOT NULL,
    Description NVARCHAR(MAX)
);

-- Add a comment to the Classes table
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Table storing information about classes available in the educational system.', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Classes';

-- Add a comment to the ClassId column
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Unique identifier for each class.', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Classes', 
    @level2type = N'COLUMN', @level2name = N'ClassId';

-- Add a comment to the ClassName column
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Name of the class, e.g., Class 5A or Mathematics Class.', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Classes', 
    @level2type = N'COLUMN', @level2name = N'ClassName';

-- Add a comment to the Description column
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Description of the class, e.g., class specifications or year group.', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Classes', 
    @level2type = N'COLUMN', @level2name = N'Description';

-- Created Topics table
CREATE TABLE Topics (
    TopicId INT PRIMARY KEY,
    ClassId INT FOREIGN KEY REFERENCES Classes(ClassId),
    TopicName NVARCHAR(1000) NOT NULL,
    Description NVARCHAR(MAX) NOT NULL 
);

-- Add a comment to the Topics table
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Table storing topics related to each class.', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Topics';

-- Add a comment to the TopicId column
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Unique identifier for each topic.', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Topics', 
    @level2type = N'COLUMN', @level2name = N'TopicId';

-- Add a comment to the ClassId column
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Foreign key referencing the Class to which the topic belongs.', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Topics', 
    @level2type = N'COLUMN', @level2name = N'ClassId';

-- Add a comment to the TopicName column
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Name of the topic, e.g., "Basic Algebra".', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Topics', 
    @level2type = N'COLUMN', @level2name = N'TopicName';

-- Add a comment to the Description column
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Description of the topic, providing details or context.', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Topics', 
    @level2type = N'COLUMN', @level2name = N'Description';

-- Created Exercises table
CREATE TABLE Exercises (
    ExerciseId INT PRIMARY KEY,
    TopicId INT FOREIGN KEY REFERENCES Topics(TopicId),
    ExerciseText NVARCHAR(MAX),
    CorrectAnswer NVARCHAR(1000),
    SolutionExplanation NVARCHAR(MAX)
);

-- Add a comment to the Exercises table
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Table storing exercises related to each topic.', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Exercises';

-- Add a comment to the ExerciseId column
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Unique identifier for each exercise.', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Exercises', 
    @level2type = N'COLUMN', @level2name = N'ExerciseId';

-- Add a comment to the TopicId column
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Foreign key referencing the Topic to which the exercise belongs.', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Exercises', 
    @level2type = N'COLUMN', @level2name = N'TopicId';

-- Add a comment to the ExerciseText column
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Text of the exercise, including the problem statement.', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Exercises', 
    @level2type = N'COLUMN', @level2name = N'ExerciseText';

-- Add a comment to the CorrectAnswer column
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'The correct answer to the exercise.', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Exercises', 
    @level2type = N'COLUMN', @level2name = N'CorrectAnswer';

-- Add a comment to the SolutionExplanation column
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Explanation of the solution to the exercise.', 
    @level0type = N'SCHEMA', @level0name = N'dbo', 
    @level1type = N'TABLE', @level1name = N'Exercises', 
    @level2type = N'COLUMN', @level2name = N'SolutionExplanation';
