namespace MapImplementation.Models
{
    public class Coordinate
    {
        // Property to store the latitude value of a location
        public double Latitude { get; set; }

        // Property to store the longitude value of a location
        public double Longitude { get; set; }

        // Constructor to initialize a Coordinate object with latitude and longitude values
        public Coordinate(double latitude, double longitude)
        {
            Latitude = latitude; // Assign the provided latitude to the Latitude property
            Longitude = longitude; // Assign the provided longitude to the Longitude property
        }
    }
}
