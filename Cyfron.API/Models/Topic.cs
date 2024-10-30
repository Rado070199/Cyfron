using System;
using System.Collections.Generic;

namespace Cyfron.API.Models;

/// <summary>
/// Table storing topics related to each class.
/// </summary>
public partial class Topic
{
    /// <summary>
    /// Unique identifier for each topic.
    /// </summary>
    public int TopicId { get; set; }

    /// <summary>
    /// Foreign key referencing the Class to which the topic belongs.
    /// </summary>
    public int? ClassId { get; set; }

    /// <summary>
    /// Name of the topic, e.g., &quot;Basic Algebra&quot;.
    /// </summary>
    public string TopicName { get; set; } = null!;

    /// <summary>
    /// Description of the topic, providing details or context.
    /// </summary>
    public string Description { get; set; } = null!;

    public virtual Class? Class { get; set; }

    public virtual ICollection<Exercise> Exercises { get; set; } = new List<Exercise>();
}
