using MapImplementation.Models; // Import the namespace containing data models
using SQLite; // Import SQLite library for database management

namespace MapImplementation.Services
{
    public class DatabaseService
    {
        private readonly SQLiteConnection _db; // SQLite connection object for interacting with the database

        public DatabaseService()
        {
            // Define the database path in the app's local data directory
            string dbPath = Path.Combine(FileSystem.AppDataDirectory, "locations.db");
            _db = new SQLiteConnection(dbPath); // Create a new SQLite connection
            _db.CreateTable<LocationData>(); // Create a table for LocationData if it doesn't exist
        }

        public void SaveLocation(double latitude, double longitude)
        {
            // Create a new location record with the provided latitude, longitude, and current timestamp
            var location = new LocationData
            {
                Latitude = latitude,
                Longitude = longitude,
                Timestamp = DateTime.UtcNow // Save the time in UTC
            };

            _db.Insert(location); // Insert the new location record into the database
        }

        public void InitializeWithCoordinates()
        {
            // Check if the database already contains location data
            if (_db.Table<LocationData>().Count() > 0)
                return; // If data exists, exit without adding predefined coordinates

            // Define a list of predefined coordinates for locations in Houston, Texas
            var usCoordinates = new List<LocationData>
            {
                new LocationData { Latitude = 29.7604, Longitude = -95.3698 }, // Houston
                new LocationData { Latitude = 29.7376, Longitude = -95.4018 }, // Rice Village
                new LocationData { Latitude = 29.7162, Longitude = -95.4021 }, // Houston Zoo
                new LocationData { Latitude = 29.7602, Longitude = -95.4105 }, // Memorial Park
                new LocationData { Latitude = 29.7499, Longitude = -95.3584 }, // Downtown Houston
                new LocationData { Latitude = 29.7365, Longitude = -95.5489 }, // Westchase
                new LocationData { Latitude = 29.6905, Longitude = -95.4857 }, // Sharpstown
                new LocationData { Latitude = 29.7844, Longitude = -95.6422 }, // Spring Branch
                new LocationData { Latitude = 29.6583, Longitude = -95.1505 }, // Pasadena
                new LocationData { Latitude = 29.6223, Longitude = -95.5980 }, // Sugar Land
                new LocationData { Latitude = 30.2500, Longitude = -95.5000 }, // Huntsville, TX
                new LocationData { Latitude = 30.2200, Longitude = -95.5800 }, // The Woodlands, TX
                new LocationData { Latitude = 30.1700, Longitude = -95.4700 }, // Conroe, TX
                new LocationData { Latitude = 29.9200, Longitude = -95.4000 }, // Baytown, TX
                new LocationData { Latitude = 30.0600, Longitude = -95.0700 }, // College Station, TX
                new LocationData { Latitude = 29.8400, Longitude = -95.5000 }, // Brenham, TX
                new LocationData { Latitude = 29.6800, Longitude = -95.0500 }, // Humble, TX
                new LocationData { Latitude = 29.5200, Longitude = -95.0200 }, // Pearland, TX
                new LocationData { Latitude = 29.3800, Longitude = -95.2300 }, // Galveston, TX
            };

            // Iterate over the predefined coordinates and save them to the database
            foreach (var coord in usCoordinates)
            {
                SaveLocation(coord.Latitude, coord.Longitude);
            }
        }

        public List<LocationData> GetSavedLocations()
        {
            // Retrieve and return all saved locations from the database
            return _db.Table<LocationData>().ToList();
        }
    }
}
