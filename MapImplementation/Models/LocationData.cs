using SQLite; // Import the SQLite namespace for database functionality

namespace MapImplementation.Models
{
    // Class representing the data model for storing location information
    public class LocationData
    {
        [PrimaryKey, AutoIncrement] // Annotation to designate 'Id' as the primary key and enable auto-increment
        public int Id { get; set; } // Unique identifier for each location record

        public double Latitude { get; set; } // Latitude coordinate of the location

        public double Longitude { get; set; } // Longitude coordinate of the location

        public DateTime Timestamp { get; set; } // Date and time when the location was saved
    }
}
