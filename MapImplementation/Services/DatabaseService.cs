using MapImplementation.Models;
using SQLite;
using System.Collections.Generic;
using System.IO;

namespace MapImplementation.Services
{
    public class DatabaseService
    {
        private readonly SQLiteConnection _db;

        public DatabaseService()
        {
            string dbPath = Path.Combine(FileSystem.AppDataDirectory, "locations.db");
            _db = new SQLiteConnection(dbPath);
            _db.CreateTable<LocationData>();
        }

        public void SaveLocation(double latitude, double longitude)
        {
            var location = new LocationData
            {
                Latitude = latitude,
                Longitude = longitude,
                Timestamp = DateTime.UtcNow
            };

            _db.Insert(location);
        }

        public List<LocationData> GetSavedLocations()
        {
            return _db.Table<LocationData>().ToList();
        }
    }
}
