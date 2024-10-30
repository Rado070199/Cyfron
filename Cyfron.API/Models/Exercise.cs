using System;
using System.Collections.Generic;

namespace Cyfron.API.Models;

/// <summary>
/// Table storing exercises related to each topic.
/// </summary>
public partial class Exercise
{
    /// <summary>
    /// Unique identifier for each exercise.
    /// </summary>
    public int ExerciseId { get; set; }

    /// <summary>
    /// Foreign key referencing the Topic to which the exercise belongs.
    /// </summary>
    public int? TopicId { get; set; }

    /// <summary>
    /// Text of the exercise, including the problem statement.
    /// </summary>
    public string? ExerciseText { get; set; }

    /// <summary>
    /// The correct answer to the exercise.
    /// </summary>
    public string? CorrectAnswer { get; set; }

    /// <summary>
    /// Explanation of the solution to the exercise.
    /// </summary>
    public string? SolutionExplanation { get; set; }

    public virtual Topic? Topic { get; set; }
}
