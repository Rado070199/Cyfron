using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Cyfron.API.Models;

public partial class CyfronContext : DbContext
{
    public CyfronContext()
    {
    }

    public CyfronContext(DbContextOptions<CyfronContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Class> Classes { get; set; }

    public virtual DbSet<Exercise> Exercises { get; set; }

    public virtual DbSet<Topic> Topics { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=.\\SQLExpress;Database=Cyfron;Trusted_Connection=true;Encrypt=False;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Class>(entity =>
        {
            entity.HasKey(e => e.ClassId).HasName("PK__Classes__CB1927C0AA3F8FF2");

            entity.ToTable(tb => tb.HasComment("Table storing information about classes available in the educational system."));

            entity.Property(e => e.ClassId).HasComment("Unique identifier for each class.");
            entity.Property(e => e.ClassName)
                .HasMaxLength(100)
                .HasComment("Name of the class, e.g., Class 5A or Mathematics Class.");
            entity.Property(e => e.Description).HasComment("Description of the class, e.g., class specifications or year group.");
        });

        modelBuilder.Entity<Exercise>(entity =>
        {
            entity.HasKey(e => e.ExerciseId).HasName("PK__Exercise__A074AD2F3AA4532B");

            entity.ToTable(tb => tb.HasComment("Table storing exercises related to each topic."));

            entity.Property(e => e.ExerciseId).HasComment("Unique identifier for each exercise.");
            entity.Property(e => e.CorrectAnswer)
                .HasMaxLength(1000)
                .HasComment("The correct answer to the exercise.");
            entity.Property(e => e.ExerciseText).HasComment("Text of the exercise, including the problem statement.");
            entity.Property(e => e.SolutionExplanation).HasComment("Explanation of the solution to the exercise.");
            entity.Property(e => e.TopicId).HasComment("Foreign key referencing the Topic to which the exercise belongs.");

            entity.HasOne(d => d.Topic).WithMany(p => p.Exercises)
                .HasForeignKey(d => d.TopicId)
                .HasConstraintName("FK__Exercises__Topic__3C69FB99");
        });

        modelBuilder.Entity<Topic>(entity =>
        {
            entity.HasKey(e => e.TopicId).HasName("PK__Topics__022E0F5DC74CEE09");

            entity.ToTable(tb => tb.HasComment("Table storing topics related to each class."));

            entity.Property(e => e.TopicId).HasComment("Unique identifier for each topic.");
            entity.Property(e => e.ClassId).HasComment("Foreign key referencing the Class to which the topic belongs.");
            entity.Property(e => e.Description).HasComment("Description of the topic, providing details or context.");
            entity.Property(e => e.TopicName)
                .HasMaxLength(1000)
                .HasComment("Name of the topic, e.g., \"Basic Algebra\".");

            entity.HasOne(d => d.Class).WithMany(p => p.Topics)
                .HasForeignKey(d => d.ClassId)
                .HasConstraintName("FK__Topics__ClassId__398D8EEE");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
