using Microsoft.Maui.Controls.Maps; // Provides map controls for MAUI applications
using Microsoft.Maui.Maps;          // Includes core mapping features and elements
using MapImplementation.Models;    // References models used in the application
using MapImplementation.Services;  // References services like database handling

namespace MapImplementation
{
    public partial class MainPage : ContentPage
    {
        private readonly DatabaseService _databaseService; // Service for handling database operations
        private readonly List<LocationData> _coordinates = new List<LocationData>(); // Stores saved locations

        public MainPage()
        {
            InitializeComponent(); // Initializes components defined in the XAML
            _databaseService = new DatabaseService(); // Initialize database service
            _databaseService.InitializeWithCoordinates(); // Preload or set up database with initial data
            StartLocationTracking(); // Start tracking the user's location
            DrawCirclesOnMap(); // Draw location circles on the map
        }

        private async void StartLocationTracking()
        {
            try
            {
                // Request high-accuracy location data from the device
                var request = new GeolocationRequest(GeolocationAccuracy.Best);
                var location = await Geolocation.Default.GetLocationAsync(request);

                if (location != null)
                {
                    SaveLocation(location.Latitude, location.Longitude); // Save the current location
                    UpdateMap(); // Refresh the map with the updated location
                }

                // Periodically track the user's location every 5 seconds
                Device.StartTimer(TimeSpan.FromSeconds(5), () =>
                {
                    TrackLiveLocation();
                    return true; // Continue the timer indefinitely
                });
            }
            catch (Exception ex)
            {
                // Display an error message if location tracking fails
                await DisplayAlert("Error", $"Unable to get location: {ex.Message}", "OK");
            }
        }

        private async void TrackLiveLocation()
        {
            try
            {
                // Fetch the current location with high accuracy
                var location = await Geolocation.Default.GetLocationAsync(new GeolocationRequest(GeolocationAccuracy.Best));

                if (location != null)
                {
                    SaveLocation(location.Latitude, location.Longitude); // Save the new location
                    UpdateMap(); // Refresh the map with the latest data
                }
            }
            catch (Exception ex)
            {
                // Handle location tracking errors (silently fail for now)
            }
        }

        private void SaveLocation(double latitude, double longitude)
        {
            // Save the location to the database
            _databaseService.SaveLocation(latitude, longitude);
        }

        private void UpdateMap()
        {
            _coordinates.Clear(); // Clear existing location data
            var savedLocations = _databaseService.GetSavedLocations(); // Fetch saved locations from the database

            // Add each saved location to the coordinate list
            foreach (var loc in savedLocations)
            {
                _coordinates.Add(new LocationData { Latitude = loc.Latitude, Longitude = loc.Longitude });
            }

            DrawCirclesOnMap(); // Redraw the map with the updated locations
        }

        private void DrawCirclesOnMap()
        {
            Microsoft.Maui.Controls.Maps.Map MainMap = this.Map; // Reference to the map control
            MainMap.Pins.Clear(); // Remove all existing pins
            MainMap.MapElements.Clear(); // Clear map elements (e.g., circles)

            if (_coordinates.Count < 1)
            {
                // Alert if there are no locations to display
                DisplayAlert("Info", "No locations to display on the map.", "OK");
                return;
            }

            // Add a blue circle for each location
            foreach (var location in _coordinates)
            {
                var circle = new Circle
                {
                    Center = new Location(location.Latitude, location.Longitude), // Set the circle's center
                    Radius = Distance.FromMiles(0.6), // Circle radius
                    FillColor = Colors.Blue.WithAlpha(0.5f), // Set semi-transparent blue fill color
                    StrokeColor = Colors.Blue, // Outline color
                    StrokeWidth = 3 // Outline thickness
                };

                MainMap.MapElements.Add(circle); // Add the circle to the map
            }

            // Center the map on the first location in the list
            var firstLocation = _coordinates.First();
            MainMap.MoveToRegion(MapSpan.FromCenterAndRadius(
                new Location(firstLocation.Latitude, firstLocation.Longitude),
                Distance.FromMiles(5))); // Adjust the zoom level
        }
    }
}
