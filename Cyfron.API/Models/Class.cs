using System;
using System.Collections.Generic;

namespace Cyfron.API.Models;

/// <summary>
/// Table storing information about classes available in the educational system.
/// </summary>
public partial class Class
{
    /// <summary>
    /// Unique identifier for each class.
    /// </summary>
    public int ClassId { get; set; }

    /// <summary>
    /// Name of the class, e.g., Class 5A or Mathematics Class.
    /// </summary>
    public string ClassName { get; set; } = null!;

    /// <summary>
    /// Description of the class, e.g., class specifications or year group.
    /// </summary>
    public string? Description { get; set; }

    public virtual ICollection<Topic> Topics { get; set; } = new List<Topic>();
}
